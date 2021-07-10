FROM debian:buster

LABEL maintainer="zskeeter"

RUN apt update && \
	apt install -y nginx openssl

COPY tools/* /tmp/

EXPOSE 443

CMD sh -c "ls /tmp && sh /tmp/start.sh"