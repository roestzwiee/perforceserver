FROM ubuntu:21.04

LABEL version="0.1.0"
LABEL maintainer="stefan_voelker@hotmail.com"

ENV P4ROOT="/opt/perforce/servers/master"
ENV P4PORT=1666
ENV P4USER="admin"
ENV P4PASSWD="changeme123"

ADD "run.sh" "${P4ROOT}/run.sh"

RUN  apt-get update \
    && apt-get upgrade -y --no-install-recommends --no-install-suggests \
    && apt-get install -y wget gnupg2\
    && rm -rf /var/lib/apt/lists/* \
    && wget -qO - https://package.perforce.com/perforce.pubkey | apt-key add - \
    && echo "deb http://package.perforce.com/apt/ubuntu focal release" > /etc/apt/sources.list.d/perforce.list \
    && apt-get update \
    && apt-get install helix-p4d -y --no-install-recommends --no-install-suggests  \
    && chmod 755 "${P4ROOT}/run.sh"

CMD ["/bin/bash", "-c", "${P4ROOT}/run.sh && tail -f /dev/null"]

EXPOSE 1666