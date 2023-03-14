FROM ubuntu
WORKDIR firebird_backup
COPY ./firebird_backup .
RUN apt update
RUN apt install -y firebird3.0-utils cron
RUN service cron start
