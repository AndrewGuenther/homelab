FROM telegraf

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y software-properties-common && \
    apt-add-repository multiverse && \
    apt-get update && \
    apt-get install -y snmp snmp-mibs-downloader

RUN sed -i '$ d' /etc/snmp/snmp.conf