FROM alpine:3

RUN apk add --no-cache bash
RUN apk add --no-cache vim
RUN apk add --no-cache zabbix-agent
RUN apk add --no-cache openssh-server

RUN ssh-keygen -A

WORKDIR /root/

COPY ./id_rsa.pub /root/.ssh/authorized_keys
COPY ./sshd_config /etc/ssh/
COPY ./zabbix_agentd.conf /etc/zabbix/zabbix_agentd.conf
COPY ./entrypoint.sh ./

CMD ["./entrypoint.sh"]
