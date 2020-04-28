FROM alpine:3.11 AS hugo
COPY / /build
RUN apk add hugo && cd /build && HUGO_DISABLELANGUAGES="en" hugo --minify --gc -b https://safemarket.info/

FROM caddy:2.0.0-rc.3-alpine
COPY Caddyfile /etc/caddy/Caddyfile
COPY --from=hugo /build/public /site
ENTRYPOINT ["caddy", "run", "--config", "/etc/caddy/Caddyfile", "--adapter", "caddyfile"]