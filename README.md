[![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/roestzwiee/perforceserver)](https://hub.docker.com/r/roestzwiee/perforceserver/)
[![Docker Pulls](https://img.shields.io/docker/pulls/roestzwiee/perforceserver.svg)](https://hub.docker.com/r/roestzwiee/perforceserver/)
[![Docker Stars](https://img.shields.io/docker/stars/roestzwiee/perforceserver.svg)](https://hub.docker.com/r/roestzwiee/perforceserver/)
[![Docker Image Size](https://img.shields.io/docker/image-size/roestzwiee/perforceserver)](https://hub.docker.com/r/roestzwiee/perforceserver/)
[![Discord](https://img.shields.io/discord/796300543738904576)](https://discord.gg/xbWsg7eP)
# Perforce Helix Core Server

Minimalistic setup for Perforce Helix Core Server running under Ubuntu. 

To start it simply type:
 
 ```
 docker run -d --name=PerforceServer roestzwiee/perforceserver -e  P4PASSWD="changeme123"
 ```

 Container can be stopped and restarted without any effect. 

 Possible environment variables (all optional):

 ```
P4ROOT="/opt/perforce/servers/master"
P4PORT=1666
P4USER="admin"
P4PASSWD="changeme123"
 ```

When use make sure you meet the perforce licence requirements. 