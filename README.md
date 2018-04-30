# anh4n/traefik-dumpcerts

Docker Wrapper for Traefik `dumpcerts.sh`

A simple utility to explode a Traefik acme.json file into a
directory of certificates and a private key

## Usage

    docker run --rm \
    -v acme:/etc/traefik/acme \
    -v acme-dump:/etc/traefik/ssl \
    anh4n/traefik-dumpcerts:latest
