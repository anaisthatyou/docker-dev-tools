# Docker dev tools

Personal docker-compose project for some local dev tools

> Script requires elevated privileges in order to add certs to local key-chain.

1. Ensure [mkcert](https://github.com/FiloSottile/mkcert) is installed.
2. Run `chmod +x make_certs.sh && ./make_certs`.
3. Add following lines to `private/etc/hosts`.

```
127.0.0.1 pgadmin.dev
127.0.0.1 portainer.dev
```

[pgadmin](https://www.pgadmin.org/) available at https://pgadmin.dev

[portainer](https://www.portainer.io/) available at https://portainer.dev