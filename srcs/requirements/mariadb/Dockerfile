FROM debian

LABEL maintainer="zskeeter"

RUN apt update && \
  apt install -y mariadb-server nano curl net-tools

COPY ./tools/* /tmp/

EXPOSE 3306

CMD bash /tmp/start.sh
