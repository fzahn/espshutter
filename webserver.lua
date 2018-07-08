--sendout http-page. Modify room-names in the buf

function sendWebPage(conn)
	local buf = "HTTP/1.1 200 OK\nServer: NodeMCU\nContent-Type: text/html\n\n"
	buf = buf .. "<h1>Rolladensteuerung</h1>"
	buf = buf .. "<p>Schlafzimmer <a href=\"?pin=UP1\"><button>auf</button></a>&nbsp;<a href=\"?pin=STOP1\"><button>stop</button></a>&nbsp<a href=\"?pin=DOWN1\"><button>ab</button></a></p>"
	buf = buf .. "<p>Bad <a href=\"?pin=UP2\"><button>auf</button></a>&nbsp;<a href=\"?pin=STOP2\"><button>stop</button></a>&nbsp<a href=\"?pin=DOWN2\"><button>ab</button></a></p>"
	buf = buf .. "<p>Wohnzimmer Nord <a href=\"?pin=UP3\"><button>auf</button></a>&nbsp;<a href=\"?pin=STOP3\"><button>stop</button></a>&nbsp<a href=\"?pin=DOWN3\"><button>ab</button></a></p>"
	buf = buf .. "<p>Wohnzimmer West <a href=\"?pin=UP4\"><button>auf</button></a>&nbsp;<a href=\"?pin=STOP4\"><button>stop</button></a>&nbsp<a href=\"?pin=DOWN4\"><button>ab</button></a></p>"
	buf = buf .. "<p>K&uuml;che Ost <a href=\"?pin=UP5\"><button>auf</button></a>&nbsp;<a href=\"?pin=STOP5\"><button>stop</button></a>&nbsp<a href=\"?pin=DOWN5\"><button>ab</button></a></p>"
	buf = buf .. "<p>Gesamt <a href=\"?pin=UP6\"><button>auf</button></a>&nbsp;<a href=\"?pin=STOP6\"><button>stop</button></a>&nbsp<a href=\"?pin=DOWN6\"><button>ab</button></a></p>"

	conn:send(buf, function(conn1)
		local buf2 = "<h2>Configuration</h2><form action=\"\" method=\"POST\">"
		buf2 = buf2 .. "<label for=\"ssid\">WIFI-SSID: <input id=\"ssid\" name=\"ssid\" value=\"" .. ssid .. "\"></label><br/>"
		buf2 = buf2 .. "<label for=\"password\">Password: <input id=\"password\" name=\"password\"></label><br/>"
		buf2 = buf2 .. "<label for=\"mqttserver\">MQTT Server: <input id=\"mqttserver\" name=\"mqttserver\" value=\"" .. mqttserver .. "\"></label><br/>"
		buf2 = buf2 .. "<label for=\"mqttbasetopic\">MQTT Topic: <input id=\"mqttbasetopic\" name=\"mqttbasetopic\" value=\"" .. mqttbasetopic .. "\"></label><br/>"
		buf2 = buf2 .. "<label for=\"Zeiten\">Laufzeiten Kanal 1-5: <input id=\"zeit1\" name=\"zeit1\" value=\"" .. zeiten[1] .. "\"><input id=\"zeit2\" name=\"zeit2\" value=\"" .. zeiten[2] .. "\"><input id=\"zeit3\" name=\"zeit3\" value=\""
		buf2 = buf2 .. zeiten[3] .. "\"><input id=\"zeit4\" name=\"zeit4\" value=\"" .. zeiten[4] .. "\"><input id=\"zeit5\" name=\"zeit5\" value=\"" .. zeiten[5] .. "\"></label><br/>"
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
			if (payload:find("pin=UP1") ~= nil) then
				moveup(1)
				sendWebPage(conn)
			elseif (payload:find("pin=DOWN1") ~= nil) then
				movedown(1)
				sendWebPage(conn)
			elseif (payload:find("pin=STOP1") ~= nil) then
				movestop(1)
				sendWebPage(conn)	
			elseif (payload:find("pin=UP2") ~= nil) then
				moveup(2)
				sendWebPage(conn)
			elseif (payload:find("pin=DOWN2") ~= nil) then
				movedown(2)
				sendWebPage(conn)
			elseif (payload:find("pin=STOP2") ~= nil) then
				movestop(2)
				sendWebPage(conn)
			elseif (payload:find("pin=UP3") ~= nil) then
				moveup(3)
				sendWebPage(conn)
			elseif (payload:find("pin=DOWN3") ~= nil) then
				movedown(3)
				sendWebPage(conn)
			elseif (payload:find("pin=STOP3") ~= nil) then
				movestop(3)
				sendWebPage(conn)
			elseif (payload:find("pin=UP4") ~= nil) then
				moveup(4)
				sendWebPage(conn)
			elseif (payload:find("pin=DOWN4") ~= nil) then
				movedown(4)
				sendWebPage(conn)
			elseif (payload:find("pin=STOP4") ~= nil) then
				movestop(4)
				sendWebPage(conn)
			elseif (payload:find("pin=UP5") ~= nil) then
				moveup(5)
				sendWebPage(conn)
			elseif (payload:find("pin=DOWN5") ~= nil) then
				movedown(5)
				sendWebPage(conn)
			elseif (payload:find("pin=STOP5") ~= nil) then
				movestop(5)
				sendWebPage(conn)
			elseif (payload:find("pin=UP6") ~= nil) then
				moveup(6)
				sendWebPage(conn)
			elseif (payload:find("pin=DOWN6") ~= nil) then
				movedown(6)
				sendWebPage(conn)
			elseif (payload:find("pin=STOP6") ~= nil) then
				movestop(6)
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
					save_wifi_param(_POST.ssid,_POST.password,_POST.mqttserver,mqtttopic,_POST.zeit1,_POST.zeit2,_POST.zeit3,_POST.zeit4,_POST.zeit5)
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
