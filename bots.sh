#!/bin/bash
#todo: mettre les noms de bots (et de screen du coup) en variables

cd ~/irc
screen -S dibot -p 0 -md
screen -S dibot -p 0 -X stuff "cat fifobot |
 ~ircbot/qui/irctk dibot@SERVER:3724 '#chan' |
 (while true ; do ~machin/irc/dibot.pl ; sleep 2 ; done) |
 tee fifobot
"
