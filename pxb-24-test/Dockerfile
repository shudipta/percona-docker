FROM debian:jessie

#MAINTAINER Percona Development <info@percona.com>

RUN set -e; \
  apt-get update; \
  apt-get install --no-install-recommends --yes \
    apt-transport-https \
    ca-certificates pwgen wget netcat socat \
  && rm -rf /var/lib/apt/lists/*

RUN wget https://repo.percona.com/apt/percona-release_0.1-6.jessie_all.deb \
  && dpkg -i percona-release_0.1-6.jessie_all.deb

RUN apt-get update \
  && apt-get install --no-install-recommends --yes \
  percona-xtrabackup-24 percona-xtradb-cluster-garbd-5.7 \
  qpress \
#  ; \
  && rm -rf /var/lib/apt/lists/* \
  && rm percona-release_0.1-6.jessie_all.deb

COPY backup.sh /
COPY backup-retry.sh /
COPY restore.sh /
RUN chmod +x /backup.sh \
  && chmod +x /backup-retry.sh \
  && chmod +x /restore.sh

#ENTRYPOINT ["xtrabackup"]

CMD ["/bin/bash"]
