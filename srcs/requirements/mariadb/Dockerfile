FROM debian

LABEL maintainer="zskeeter"

RUN apt update

COPY ./tools/* /tmp/

EXPOSE 3306

CMD bash /tmp/start.sh