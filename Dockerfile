FROM caddy:2.0.0-rc.3-alpine

COPY Caddyfile /etc/caddy/Caddyfile
COPY public /site
ENTRYPOINT ["caddy", "run", "--config", "/etc/caddy/Caddyfile", "--adapter", "caddyfile"]