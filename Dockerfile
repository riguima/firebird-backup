FROM jacobalberty/firebird
WORKDIR firebird_backup
COPY ./firebird_backup .
RUN apt update
RUN apt install -y firebird3.0-utils cron
RUN echo '00 12 * * * root /bin/bash /firebird_backup/backups.sh' >> /etc/crontab
CMD service cron start
CMD cat /etc/crontab
