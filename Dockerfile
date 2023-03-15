FROM debian:bullseye-slim
WORKDIR firebird_backup
COPY ./firebird_backup .
RUN apt update
RUN apt install -y firebird3.0-utils cron nano
RUN echo "0 23	* * *	root	bash /firebird_backup/backups.sh"
ENTRYPOINT service cron start && /bin/bash
