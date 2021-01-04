FROM ubuntu:21.04

LABEL maintainer="stefan_voelker@hotmail.com"

ENV NAME=roesti
ENV P4ROOT="/opt/perforce/servers/master"
ENV P4PORT=1666
ENV P4USER="admin"
ENV P4PASSWD="changeme123"

RUN  apt-get update \
    && apt-get upgrade -y --no-install-recommends --no-install-suggests \
    && apt-get install -y wget gnupg2\
    && rm -rf /var/lib/apt/lists/* \
    && wget -qO - https://package.perforce.com/perforce.pubkey | apt-key add - \
    && echo "deb http://package.perforce.com/apt/ubuntu focal release" > /etc/apt/sources.list.d/perforce.list \
    && apt-get update \
    && apt-get install helix-p4d -y --no-install-recommends --no-install-suggests 

CMD ["/bin/bash", "-c", "/opt/perforce/sbin/configure-helix-p4d.sh perforce -n -p ${P4PORT} -r ${P4ROOT} -u ${P4USER}  -P ${P4PASSWD}  --unicode && tail -f /dev/null"]

EXPOSE 1666