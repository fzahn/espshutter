-- Tell the chip to connect to this access point
wifi.setmode(wifi.STATION)
wifi.sta.config("","PSKPSKPSKPSKPSKPSK")
mqttserver = "192.168.0.1"
mqttbasetopic = "/rolladen"
zeiten = {5,5,5,5,5}
