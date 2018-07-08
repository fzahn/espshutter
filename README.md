#ESP Shutter Control

This project was created to adapt a ESP8266 SoC with an existing Remote Control for controlling Schellenberg smart roller shutter drives (Prem 10/20/40)
The remote is a 5-channel remote with 4 buttons: UP/STOP/DOWN/change channel

The ESP has been connected to the remote control with a CD4066 chip, that is used as bipoloar switch to replace the existing four buttons.
The ESP uses GPIO 0-4 to switch the CD4066 chip.


The ESP can be configured using webinterface with MDNS-URL http://rolladen.local after it has gone through AUTO-Setup routine
