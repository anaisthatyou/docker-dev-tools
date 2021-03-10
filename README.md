# Docker Development Environment

Personal docker-compose stacks for some local dev tools and shared containers

## shared

Shared services that can be used across many projects.

[PostgreSQL](https://www.postgresql.org/)

## dev-tools

> Script requires elevated privileges in order to add certs to local key-chain.

1. Ensure [mkcert](https://github.com/FiloSottile/mkcert) is installed, and root cert is trusted (`mkcert --install`).
2. Run `chmod +x make_certs.sh && ./make_certs`.
3. Add following lines to `private/etc/hosts`.
4. Run `docker-compose up -d`.

```hosts
127.0.0.1       pgadmin.dev
127.0.0.1       portainer.dev
127.0.0.1       mock.dev
127.0.0.1       ldap-admin.dev
```

### [nxinx as a reverse proxy](https://www.nginx.com/) serving on ports 80 and 443

Manages all of the redirect too the other tools via subdomain routing. 80 redirects to 443. Nginx serves the SSL certificates.

### [portainer](https://www.portainer.io/) available at <https://portainer.dev>

Easy visual management of all the containers.

### [pgadmin](https://www.pgadmin.org/) available at <https://pgadmin.dev>

PGAdmin. Visual postgres web client running in a container.

### [json-server](https://www.npmjs.com/package/json-server) available at <https://mock.dev>

Very simple way to have a mock endpoint to point tests towards, nice to have a rest api capable of giving you data when you need it.

### [openldap](https://en.wikipedia.org/wiki/Lightweight_Directory_Access_Protocol)

because why not

### [ldap-user-manager](https://github.com/wheelybird/ldap-user-manager) available at <https://ldap-admin.dev>

because now we need to manage the ldap

Also moved the postgres container i run into the dev tools stacks, since I only want 1 running on my local machine.
