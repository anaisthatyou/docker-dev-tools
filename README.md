# Docker dev tools

Personal docker-compose project for some local dev tools

> Script requires elevated privileges in order to add certs to local key-chain.

1. Ensure [mkcert](https://github.com/FiloSottile/mkcert) is installed, and root cert is trusted (`mkcert --install`).
2. Run `chmod +x make_certs.sh && ./make_certs`.
3. Add following lines to `private/etc/hosts`.
4. Run `docker-compose up -d`.

```
127.0.0.1 pgadmin.dev
127.0.0.1 portainer.dev
```

[pgadmin](https://www.pgadmin.org/) available at https://pgadmin.dev

[portainer](https://www.portainer.io/) available at https://portainer.dev

