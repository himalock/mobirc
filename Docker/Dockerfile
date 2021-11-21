FROM alpine

RUN apk add --no-cache tini su-exec perl perl-cgi tzdata && \
    apk add --no-cache --virtual mobirc-build-deps curl git perl-dev wget gcc g++ libc-dev make patch && \
    cd /usr/local/ && \
    git clone https://github.com/tokuhirom/mobirc.git && \
    cd ./mobirc/ && \
    curl -L http://cpanmin.us | perl - -l extlib/ --installdeps . --notest --force && \
    rm -rf .git && \
    rm -rf extlib/man && \
    rm -rf ~/.cpanm && \
    apk del --purge mobirc-build-deps && \
    rm -rf /var/cache/apk/* && \
    ln -s /usr/share/zoneinfo/Asia/Tokyo  /etc/localtime && date

COPY ./entrypoint.sh /
COPY ./mobirc.sh /usr/local/bin/

CMD /bin/sh /entrypoint.sh
