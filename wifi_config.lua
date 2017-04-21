--Function to save WiFi-parameters into file-system as wlancfg.lua
function save_wifi_param(ssid,password,mqttserver,mqttbasetopic)
 file.remove("wlancfg.lua");
 file.open("wlancfg.lua","w+");
 w = file.writeline('-- Tell the chip to connect to thi access point');
 w = file.writeline('wifi.setmode(wifi.STATION)');
 w = file.writeline('wifi.sta.config("' .. ssid .. '","' .. password .. '")');
 w = file.writeline('mqttserver="' .. mqttserver ..'"');
 w = file.writeline('mqttbasetopic="' .. mqttbasetopic ..'"'); 
 file.close();
 ssid,password,bssid_set,bssid=nil,nil,nil,nil
end

---push_button_Functions

SOLENOID1=8
SOLENOID2=4
SOLENOID3=3
SOLENOID4=1
SOLENOID5=7
SOLENOID6=6
SOLENOID7=5
SOLENOID8=0




function open_valve(solenoid)
	gpio.write(solenoid,gpio.HIGH)
	m:publish(mqttbasetopic .. solenoid .."/value", "open",0,0)
end
function close_valve(solenoid)
	gpio.write(solenoid,gpio.LOW)
	m:publish(mqttbasetopic .. solenoid .."/value", "close",0,0)
end


--MQTT Subsystem
function initmqtt()
	m = mqtt.Client("ESP8266", 120, "user", "pass")
	function mqttsubscribe()
		m:subscribe(mqttbasetopic .. "1/command",0, function() print("subscribe success") end)
		m:subscribe(mqttbasetopic .. "2/command",0, function() print("subscribe success") end)
		m:subscribe(mqttbasetopic .. "3/command",0, function() print("subscribe success") end)
		m:subscribe(mqttbasetopic .. "4/command",0, function() print("subscribe success") end)
		m:subscribe(mqttbasetopic .. "5/command",0, function() print("subscribe success") end)
		m:subscribe(mqttbasetopic .. "6/command",0, function() print("subscribe success") end)
		m:subscribe(mqttbasetopic .. "7/command",0, function() print("subscribe success") end)
		m:subscribe(mqttbasetopic .. "8/command",0, function() print("subscribe success") end)
		m:publish(mqttbasetopic .. "1" .."/value", "close",0,0)
		m:publish(mqttbasetopic .. "2" .."/value", "close",0,0)
		m:publish(mqttbasetopic .. "3" .."/value", "close",0,0)
		m:publish(mqttbasetopic .. "4" .."/value", "close",0,0)
		m:publish(mqttbasetopic .. "5" .."/value", "close",0,0)
		m:publish(mqttbasetopic .. "6" .."/value", "close",0,0)
		m:publish(mqttbasetopic .. "7" .."/value", "close",0,0)
		m:publish(mqttbasetopic .. "8" .."/value", "close",0,0)
	end
	m:on("connect", mqttsubscribe)
	
	m:on("message", function(client,topic,data)
		if (data=="open") then
			print("Topic: " .. topic .. " Data: " .. data)
			if topic==mqttbasetopic .. "1/action" then open_valve(SOLENOID1) end
			if topic==mqttbasetopic .. "2/action" then open_valve(SOLENOID2) end
			if topic==mqttbasetopic .. "3/action" then open_valve(SOLENOID3) end
			if topic==mqttbasetopic .. "4/action" then open_valve(SOLENOID4) end
			if topic==mqttbasetopic .. "5/action" then open_valve(SOLENOID5) end
			if topic==mqttbasetopic .. "6/action" then open_valve(SOLENOID6) end
			if topic==mqttbasetopic .. "7/action" then open_valve(SOLENOID7) end
			if topic==mqttbasetopic .. "8/action" then open_valve(SOLENOID8) end			
		elseif (data=="close") then
			print("Topic: " .. topic .. " Data: " .. data)
			if topic==mqttbasetopic .. "1/action" then close_valve(SOLENOID1) end
			if topic==mqttbasetopic .. "2/action" then close_valve(SOLENOID2) end
			if topic==mqttbasetopic .. "3/action" then close_valve(SOLENOID3) end
			if topic==mqttbasetopic .. "4/action" then close_valve(SOLENOID4) end
			if topic==mqttbasetopic .. "5/action" then close_valve(SOLENOID5) end
			if topic==mqttbasetopic .. "6/action" then close_valve(SOLENOID6) end
			if topic==mqttbasetopic .. "7/action" then close_valve(SOLENOID7) end
			if topic==mqttbasetopic .. "8/action" then close_valve(SOLENOID8) end		
		end		
	end
	)
	
	
	m:connect(mqttserver,1883,0)
	
end






--init_logic run once after successfully established network-connection 
function init_logic()


-- startServer
 dofile("webserver.lc")
 startWebServer()
 initmqtt()
--register MDNS
 mdns.register("rolladen", { description="ESP Rolladensteuerung", service="http", port="80" }) 
end


function init_gpio()
	gpio.mode(SOLENOID1, gpio.OUTPUT)
	gpio.mode(SOLENOID2, gpio.OUTPUT)
	gpio.mode(SOLENOID3, gpio.OUTPUT)
	gpio.mode(SOLENOID4, gpio.OUTPUT)
	gpio.mode(SOLENOID5, gpio.OUTPUT)
	gpio.mode(SOLENOID6, gpio.OUTPUT)
	gpio.mode(SOLENOID7, gpio.OUTPUT)
	gpio.mode(SOLENOID8, gpio.OUTPUT)
	gpio.write(SOLENOID1, gpio.LOW)
	gpio.write(SOLENOID2, gpio.LOW)
	gpio.write(SOLENOID3, gpio.LOW)
	gpio.write(SOLENOID4, gpio.LOW)
	gpio.write(SOLENOID5, gpio.LOW)
	gpio.write(SOLENOID6, gpio.LOW)
	gpio.write(SOLENOID7, gpio.LOW)
	gpio.write(SOLENOID8, gpio.LOW)
end


--MAIN PROGRAM ENTRY POINT, CALLED FROM init.lua

--if unable to connect for 30 seconds, start enduser_setup-routine
--load Wifi-configuration and try to connect

init_gpio()
dofile("wlancfg.lua")


connect_counter = 0
tmr.alarm(0, 100, 1, function()
 if wifi.sta.status() ~= 5 then
    connect_counter = connect_counter + 1
    print("Connecting to AP...")
    if(connect_counter == 300) then
      tmr.stop(0)
      print("Starting WiFi setup mode")
      enduser_setup.start(
       function()
        ssid,password,bssid_set,bssid=wifi.sta.getconfig()
        save_wifi_param(ssid,password,"192.168.0.1","/garten/irrigation/");
        print("Connected to wifi as:" .. wifi.sta.getip());
        print("Saved parameters in wlancfg.lua");
        init_logic();
       end,
       function(err, str)
        print("enduser_setup: Err #:" .. err .. ": " .. str);
       end
      )
    end
  else
   tmr.stop(0)
   tmr.unregister(0)
   print('IP: ',wifi.sta.getip())
   init_logic()
  end
 end
)
      
--at this point we should be ready to go....

