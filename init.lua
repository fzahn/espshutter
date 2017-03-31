--compile lua scripts if there are new luas...
tmr.delay(500*1000)
files= file.list()
if (files["webserver.lua"]) then
  print("Compiling webserver.lua to webserver.lc")
  tmr.delay(500*1000)
  file.remove("webserver.lc")
  tmr.delay(500*1000)  
  node.compile("webserver.lua")
  tmr.delay(500*1000)  
  file.remove("webserver.lua")
  node.restart()
else if (files["wifi_config.lua"]) then
  print("Compiling wifi_config.lua to wifi_config.lc")
  tmr.delay(50*1000)
  file.remove("wifi_config.lc")
  tmr.delay(500*1000)  
  node.compile("wifi_config.lua")
  tmr.delay(500*1000)  
  file.remove("wifi_config.lua")
  node.restart()

--start logic out of wifi_config.lua
end
end



dofile("wifi_config.lc")
