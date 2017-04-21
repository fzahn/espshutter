--sendout http-page. Modify room-names in the buf

function sendWebPage(conn)
	local buf = "HTTP/1.1 200 OK\nServer: NodeMCU\nContent-Type: text/html\n\n"
	buf = buf .. "<h1>Gartenbew&auml;sserung</h1>"
	buf = buf .. "<p>Hauptventil <a href=\"?pin=OPEN1\"><button>open</button></a>&nbsp;<a href=\"?pin=CLOSE1\"><button>close</button></a></p>"
	buf = buf .. "<p>Ventil 2 <a href=\"?pin=OPEN2\"><button>open</button></a>&nbsp;<a href=\"?pin=CLOSE2\"><button>close</button></a></p>"
	buf = buf .. "<p>Ventil 3 <a href=\"?pin=OPEN3\"><button>open</button></a>&nbsp;<a href=\"?pin=CLOSE3\"><button>close</button></a></p>"
	buf = buf .. "<p>Ventil 4 <a href=\"?pin=OPEN4\"><button>open</button></a>&nbsp;<a href=\"?pin=CLOSE4\"><button>close</button></a></p>"
	buf = buf .. "<p>Ventil 5 <a href=\"?pin=OPEN5\"><button>open</button></a>&nbsp;<a href=\"?pin=CLOSE5\"><button>close</button></a></p>"
	buf = buf .. "<p>Ventil 6 <a href=\"?pin=OPEN6\"><button>open</button></a>&nbsp;<a href=\"?pin=CLOSE6\"><button>close</button></a></p>"
	buf = buf .. "<p>Ventil 7 <a href=\"?pin=OPEN7\"><button>open</button></a>&nbsp;<a href=\"?pin=CLOSE7\"><button>close</button></a></p>"
	buf = buf .. "<p>Ventil 8 <a href=\"?pin=OPEN8\"><button>open</button></a>&nbsp;<a href=\"?pin=CLOSE8\"><button>close</button></a></p>"		

	conn:send(buf, function(conn1)
        buf = nil
		local buf2 = "<h2>Configuration</h2><form action=\"\" method=\"POST\">"
		buf2 = buf2 .. "<label for=\"ssid\">WIFI-SSID: <input id=\"ssid\" name=\"ssid\" value=\"" .. ssid .. "\"></label><br/>"
		buf2 = buf2 .. "<label for=\"password\">Password: <input id=\"password\" name=\"password\"></label><br/>"
		buf2 = buf2 .. "<label for=\"mqttserver\">MQTT Server: <input id=\"mqttserver\" name=\"mqttserver\" value=\"" .. mqttserver .. "\"></label><br/>"
		buf2 = buf2 .. "<label for=\"mqttbasetopic\">MQTT Topic: <input id=\"mqttbasetopic\" name=\"mqttbasetopic\" value=\"" .. mqttbasetopic .. "\"></label><br/>"
		buf2 = buf2 .. "<input type=\"submit\" value=\"Save Config\"></form>"												
		buf2 = buf2 .. "\n</body></html>"
		conn1:send(buf2, function(sk)
			sk:close()
	  	end
		)
		buf2 = nil
	end
	)
	buf=nil
end

function startWebServer()
	srv=net.createServer(net.TCP)
	srv:listen(80,function(conn)
		conn:on("receive", function(conn,payload)
			ssid, password, bssid_set, bssid = wifi.sta.getconfig()
			if (payload:find("pin=OPEN1") ~= nil) then
				open_valve(1)
				sendWebPage(conn)
			elseif (payload:find("pin=CLOSE1") ~= nil) then
				close_valve(1)
				sendWebPage(conn)
			elseif (payload:find("pin=OPEN2") ~= nil) then
				open_valve(2)
				sendWebPage(conn)
			elseif (payload:find("pin=CLOSE2") ~= nil) then
				close_valve(2)
				sendWebPage(conn)
			elseif (payload:find("pin=OPEN3") ~= nil) then
				open_valve(3)
				sendWebPage(conn)
			elseif (payload:find("pin=CLOSE3") ~= nil) then
				close_valve(3)
				sendWebPage(conn)
			elseif (payload:find("pin=OPEN4") ~= nil) then
				open_valve(4)
				sendWebPage(conn)
			elseif (payload:find("pin=CLOSE4") ~= nil) then
				close_valve(4)
				sendWebPage(conn)
			elseif (payload:find("pin=OPEN5") ~= nil) then
				open_valve(5)
				sendWebPage(conn)
			elseif (payload:find("pin=CLOSE5") ~= nil) then
				close_valve(5)
				sendWebPage(conn)
			elseif (payload:find("pin=OPEN6") ~= nil) then
				open_valve(6)
				sendWebPage(conn)
			elseif (payload:find("pin=CLOSE6") ~= nil) then
				close_valve(6)
				sendWebPage(conn)
			elseif (payload:find("pin=OPEN7") ~= nil) then
				open_valve(7)
				sendWebPage(conn)
			elseif (payload:find("pin=CLOSE7") ~= nil) then
				close_valve(7)
				sendWebPage(conn)
			elseif (payload:find("pin=OPEN8") ~= nil) then
				open_valve(8)
				sendWebPage(conn)
			elseif (payload:find("pin=CLOSE8") ~= nil) then
				close_valve(8)
				sendWebPage(conn)
			elseif (payload:find("GET /") ~=nil) then
				sendWebPage(conn)
			elseif (payload:find("POST /") ~=nil) then
				--code for handling the POST-request (updating settings)
				_, postdatastart = payload:find("\r\n\r\n")
				--Next lines catches POST-requests without POST-data....
				if postdatastart==nil then postdatastart = 1 end
				postRequestData=string.sub(payload,postdatastart+1)
				local _POST = {}
				for i, j in string.gmatch(postRequestData, "(%w+)=([^&]+)&*") do
					_POST[i] = j
				end
				postRequestData=nil
				if ((_POST.ssid~=nil) and (_POST.password~=nil) and (_POST.mqttserver~=nil) and (_POST.mqttbasetopic~=nil)) then
					tmr.stop(1)
					mqtttopic,l=string.gsub(_POST.mqttbasetopic,"%%2F","/")
					print("im Formular: " .. _POST.mqttserver)
					save_wifi_param(_POST.ssid,_POST.password,_POST.mqttserver,mqtttopic)
					sendWebPage(conn)
				else
					ssid, password, bssid_set, bssid = wifi.sta.getconfig()
					sendWebPage(conn)
					conn:on("sent", function(conn) conn:close() end)
				end				
				
				
			--If not HTTP GET OR POST: start CLI	
			else	
				global_c=conn
				function s_output(str)
					if(global_c~=nil) then
						global_c:send(str)
					end
				end
				node.output(s_output, 0)
				global_c:on("receive",function(c,l)
					node.input(l)
				end
				)
				global_c:on("disconnection",function(c)
					node.output(nil)
					global_c=nil
				end
				)
				print("Welcome to Rolladen-ESP")

			end
		end
		)
	end
	)
end
