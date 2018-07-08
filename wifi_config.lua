--Function to save WiFi-parameters into file-system as wlancfg.lua
function save_wifi_param(ssid,password,mqttserver,mqttbasetopic,zeit1,zeit2,zeit3,zeit4,zeit5)
 file.remove("wlancfg.lua");
 file.open("wlancfg.lua","w+");
 w = file.writeline('-- Tell the chip to connect to thi access point');
 w = file.writeline('wifi.setmode(wifi.STATION)');
 w = file.writeline('wifi.sta.config("' .. ssid .. '","' .. password .. '")');
 w = file.writeline('mqttserver="' .. mqttserver ..'"');
 w = file.writeline('mqttbasetopic="' .. mqttbasetopic ..'"');
 w = file.writeline('zeiten={'.. zeit1 .. ',' .. zeit2 ..',' .. zeit3 .. ',' .. zeit4 .. ',' .. zeit5 ..'}');
 file.close();
 ssid,password,bssid_set,bssid=nil,nil,nil,nil
end

---push_button_Functions

BUTTON_CHANNEL=0
BUTTON_DOWN=1
BUTTON_STOP=2
BUTTON_UP=3
CURRENTCHANNEL=1
HEIGHTS = {0,0,0,0,0}

-- variable to prevent simultaneous access to selectChannel in the move-functions
notBlocked=1


function pressButton(button) 
  tmr.alarm(0, 100, tmr.ALARM_SINGLE, function()
    gpio.write(button, gpio.LOW)
  end)
  gpio.write(button, gpio.HIGH)
end


function selectChannel(channel)
   if (CURRENTCHANNEL ~= channel) then pressButton(BUTTON_CHANNEL) end
	tmr.alarm(1, 200, tmr.ALARM_AUTO, function()
		if (CURRENTCHANNEL ~= channel) then
			pressButton(BUTTON_CHANNEL)
			CURRENTCHANNEL=CURRENTCHANNEL + 1
			if (CURRENTCHANNEL==7) then CURRENTCHANNEL=1 end
		else tmr.unregister(1) end
	end
	)
end





function moveup(channel)
    if (notBlocked==1) then
		 notBlocked=0
         selectChannel(channel)
	     tmr.alarm(3, 1500, tmr.ALARM_SINGLE, function() pressButton(BUTTON_UP) notBlocked=1 end)
		 if (channel==6) then
			 HEIGHTS = {0,0,0,0,0}
		 else
			 HEIGHTS[channel] = 0
		 end
			
    end
end

function movedown(channel)
	if (notBlocked==1) then
		notBlocked=0
		selectChannel(channel)
		tmr.alarm(3, 1500, tmr.ALARM_SINGLE, function() pressButton(BUTTON_DOWN)  notBlocked=1 end)
	 if (channel==6) then
		 HEIGHTS = {100,100,100,100,100}
	 else
		 HEIGHTS[channel] = 100
	 end
	end
end

function movestop(channel)
	if (notBlocked==1) then
		notBlocked=0
		selectChannel(channel)
		tmr.alarm(3, 1500, tmr.ALARM_SINGLE, function() pressButton(BUTTON_STOP) notBlocked=1 end)
	 	if (channel==6) then
		 	HEIGHTS = {50,50,50,50,50}
	 	else
		 	HEIGHTS[channel] = 50
	 	end
	end
end

function movepercent(channel,percent)
	if ((notBlocked==1) and (HEIGHTS[channel]==0)) then
		tmr.unregister(4)
		tmr.unregister(5)
		notBlocked=0
		selectChannel(channel)
		tmr.alarm(4, 1500, tmr.ALARM_SINGLE, function()
			pressButton(BUTTON_DOWN)
			tmr.alarm(5,zeiten[channel]*10*percent, tmr.ALARM_SINGLE, function()
				pressButton(BUTTON_STOP)
			end)
			notBlocked=1
		end)
		HEIGHTS[channel]=percent
	else
		if (notBlocked==1) then
			moveup(channel)
			tmr.unregister(4)
			tmr.alarm(4,zeiten[channel]*1500,tmr.ALARM_SINGLE, function()
				pressButton(BUTTON_DOWN)
				tmr.unregister(5)
				tmr.alarm(5,zeiten[channel]*10*percent, tmr.ALARM_SINGLE, function()
					pressButton(BUTTON_STOP)
					notBlocked=1
				end)
			end)
		end
	end
end


--MQTT Subsystem
function initmqtt()
	m = mqtt.Client("ESP8266", 120, "user", "pass")
	function mqttsubscribe()
		notBlocked=0
		m:subscribe(mqttbasetopic .. "1",0, function() print("subscribe success") end)
		m:subscribe(mqttbasetopic .. "2",0, function() print("subscribe success") end)
		m:subscribe(mqttbasetopic .. "3",0, function() print("subscribe success") end)
		m:subscribe(mqttbasetopic .. "4",0, function() print("subscribe success") end)
		m:subscribe(mqttbasetopic .. "5",0, function() print("subscribe success") end)
		m:subscribe(mqttbasetopic .. "6",0, function() print("subscribe success") end)
		tmr.alarm(1,2500, tmr.ALARM_SINGLE, function() notBlocked=1 end)
	end
	m:on("connect", mqttsubscribe)
	
	m:on("message", function(client,topic,data)
		if ((data=="up") and (notBlocked==1)) then
			print("Topic: " .. topic .. " Data: " .. data)
			if topic==mqttbasetopic .. "1" then moveup(1) end
			if topic==mqttbasetopic .. "2" then moveup(2) end
			if topic==mqttbasetopic .. "3" then moveup(3) end
			if topic==mqttbasetopic .. "4" then moveup(4) end
			if topic==mqttbasetopic .. "5" then moveup(5) end
			if topic==mqttbasetopic .. "6" then
				notBlocked=0
				m:publish(mqttbasetopic .. "1","up",0,0)
				m:publish(mqttbasetopic .. "2","up",0,0)
				m:publish(mqttbasetopic .. "3","up",0,0)
				m:publish(mqttbasetopic .. "4","up",0,0)
				m:publish(mqttbasetopic .. "5","up",0,0)
				notBlocked=1
            moveup(6)
			end
		elseif ((data=="down") and (notBlocked==1)) then
			print("Topic: " .. topic .. " Data: " .. data)
			if topic==mqttbasetopic .. "1" then movedown(1) end
			if topic==mqttbasetopic .. "2" then movedown(2) end
			if topic==mqttbasetopic .. "3" then movedown(3) end
			if topic==mqttbasetopic .. "4" then movedown(4) end
			if topic==mqttbasetopic .. "5" then movedown(5) end
			if topic==mqttbasetopic .. "6" then
				notBlocked=0
				m:publish(mqttbasetopic .. "1","down",0,0)
				m:publish(mqttbasetopic .. "2","down",0,0)
				m:publish(mqttbasetopic .. "3","down",0,0)
				m:publish(mqttbasetopic .. "4","down",0,0)
				m:publish(mqttbasetopic .. "5","down",0,0)
				notBlocked=1
                movedown(6)
			end
		elseif ((data=="stop") and (notBlocked==1)) then
			print("Topic: " .. topic .. " Data: " .. data)
			if topic==mqttbasetopic .. "1" then movestop(1) end
			if topic==mqttbasetopic .. "2" then movestop(2) end
			if topic==mqttbasetopic .. "3" then movestop(3) end
			if topic==mqttbasetopic .. "4" then movestop(4) end
			if topic==mqttbasetopic .. "5" then movestop(5) end
			if topic==mqttbasetopic .. "6" then
            movestop(6)
			end			
		elseif  (notBlocked==1) then
			print("Topic: " .. topic .. " Data: " .. data)
			if topic==mqttbasetopic .. "1" then movepercent(1,tonumber(data)) end
			if topic==mqttbasetopic .. "2" then movepercent(2,tonumber(data)) end
			if topic==mqttbasetopic .. "3" then movepercent(3,tonumber(data)) end
			if topic==mqttbasetopic .. "4" then movepercent(4,tonumber(data)) end
			if topic==mqttbasetopic .. "5" then movepercent(5,tonumber(data)) end
			if topic==mqttbasetopic .. "6" then
				notBlocked=0
				m:publish(mqttbasetopic .. "1",data,0,0)
				m:publish(mqttbasetopic .. "2",data,0,0)
				m:publish(mqttbasetopic .. "3",data,0,0)
				m:publish(mqttbasetopic .. "4",data,0,0)
				m:publish(mqttbasetopic .. "5",data,0,0)
				notBlocked=1
			end
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
	gpio.mode(0, gpio.OUTPUT)
	gpio.mode(1, gpio.OUTPUT)
	gpio.mode(2, gpio.OUTPUT)
	gpio.mode(3, gpio.OUTPUT)
	gpio.write(0, gpio.LOW)
	gpio.write(1, gpio.LOW)
	gpio.write(2, gpio.LOW)
	gpio.write(3, gpio.LOW)
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
        save_wifi_param(ssid,password,"192.168.0.1","/rolladen/",5,5,5,5,5);
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

