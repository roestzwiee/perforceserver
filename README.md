[![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/roestzwiee/perforceserver)](https://hub.docker.com/r/roestzwiee/perforceserver/)

# Perforce Helix Core Server

Minimalistic setup for Perforce Helix Core Server running under Ubuntu. 

To start it simply type: 
 
 ```
 docker run -d --name=PerforceServer roestzwiee/perforceserver -e  P4PASSWD="changeme123"
 ```

 Container can be stopped and restarted without any effect. 

 ```
P4ROOT="/opt/perforce/servers/master"
P4PORT=1666
P4USER="admin"
P4PASSWD="changeme123"
 ```

When use make sure you meet the perforce licence requirements. 