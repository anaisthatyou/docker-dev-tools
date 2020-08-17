#!/bin/bash
cwd=$(pwd)
certs_dir="${cwd}/certs"

if [ -d "$certs_dir" ]; then
  echo "${certs_dir} already exists. Remove or use exists certs.";
  exit 1;
fi

mkdir certs
mkdir certs/portainer
mkdir certs/pgadmin

mkcert -cert-file certs/portainer/cert.pem -key-file certs/portainer/key.pem portainer.dev
mkcert -cert-file certs/pgadmin/cert.pem -key-file certs/pgadmin/key.pem pgadmin.dev

sudo security add-trusted-cert -d -r trustRoot -k /Library/Keychains/System.keychain certs/portainer/cert.pem certs/pgadmin/cert.pem
