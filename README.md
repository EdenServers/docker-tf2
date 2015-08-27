# Official Team Fortress 2 Container on EdenServers

[![Run on EdenServers](https://img.shields.io/badge/EdenServers-view-blue.svg)](http://www.edenservers.us)
[![](https://badge.imagelayers.io/edenservers/tf2:latest.svg)](https://imagelayers.io/?images=edenservers/tf2:latest 'Get your own badge on imagelayers.io')

![](https://upload.wikimedia.org/wikipedia/fr/4/41/Team_Fortress_2.png)

All-in-one Team Fortress 2 Server Container built for [EdenServers](http://www.edenservers.us).

It also includes an SCP server.

---

**This image is meant to be used on an EdenServers Server.**

Our images are built to specifically run for our services. You can run it directly with Docker though.

---
### 1.0.0 (2015-08-27)

This initial version contains:

* *steamcmd*, and a pre-installed TF2 Server
* *scp* Server to upload and download files

---

## Install

    $ docker pull edenservers/tf2

---

## Config

Instructions for TF2 config can be found [here](https://wiki.teamfortress.com/wiki/Dedicated_server_configuration).

| Environment Variable  | Description |
| ------------- | ------------- |
| MAP    | TF2 Map  |
| STARTUP_OPTIONS    | Additional startup options  |
| USERNAME    | SCP Username  |
| PASSWORD     | SCP Password  |

| Port  | Description |
| ------------- | ------------- |
| 27015 | TF2 and RCON  |
| 22 | SCP  |

---

## Run example

    $  docker run -e USERNAME=edenservers -e PASSWORD=edenservers -e MAP=cp_dustbowl -p 27015:27015 -p 27015:27015/udp -p 1234:22 --name tf2 -d edenservers/tf2

---

Made by [![EdenServers](http://image.noelshack.com/fichiers/2015/35/1440630894-logo.png)](https://www.edenservers.us)
