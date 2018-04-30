FROM alpine:3.7

ENV TRAEFIK_VERSION=v1.6

RUN apk add --no-cache bash jq curl openssl

RUN curl \
    https://raw.githubusercontent.com/containous/traefik/${TRAEFIK_VERSION}/contrib/scripts/dumpcerts.sh \
    -o /etc/dumpcerts.sh \
    && chmod +x /etc/dumpcerts.sh

ENTRYPOINT ["/etc/dumpcerts.sh"]

CMD ["/etc/traefik/acme/acme.json", "/etc/traefik/ssl"]
