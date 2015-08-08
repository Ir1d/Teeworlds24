FROM ubuntu

RUN DEBIAN_FRONTEND=noniteractive && \
    apt-get update && \
    apt-get install -y lib32z1 lib32stdc++6 && \
    apt-get install -y teeworlds && \
    apt-get install -y teeworlds-server && \
    apt-get clean && \
    apt-get autoclean && \
    wget "https://raw.githubusercontent.com/imcaffrey/Teeworlds24/master/autoexec.cfg" && \
    cp autoexec.cfg.1 ~/autoexec.cfg && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

EXPOSE 8303/udp 8304/udp 8305/udp

CMD ["teeworlds-server"]