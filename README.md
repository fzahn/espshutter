#ESP Irrigation Interface

This code is used to control 8 solenoid valves via ESP8266.
The solenoids of the valves are connected via ULN2803 darlington array to the GPIOs of the ESP8266

The watering system has one main valve, which is connected to  valve1. This valve always has to be opened, when another valve is opened


They are attached as follows:

GPIO10 -> Valve 1 (main valve)
GPIO15  -> Valve 2
GPIO4  -> Valve 3
GPIO5  -> Valve 4
GPIO13 -> Valve 5
GPIO12 -> Valve 6
GPIO14 -> Valve 7
GPIO16 -> Valve 8
