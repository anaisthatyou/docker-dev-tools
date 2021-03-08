#!/bin/bash
cwd=$(pwd)
certs_dir=$cwd/certs

if [ -d $certs_dir ]; then
  echo "${certs_dir} already exists. Remove or use exists certs.";
  exit 1;
fi

mkdir $certs_dir
mkdir $certs_dir/portainer
mkdir $certs_dir/pgadmin
mkdir $certs_dir/mock
mkdir $certs_dir/ldap

mkcert -cert-file $certs_dir/portainer/cert.pem -key-file $certs_dir/portainer/key.pem ana-macbook.portainer portainer.dev 
mkcert -cert-file $certs_dir/pgadmin/cert.pem -key-file $certs_dir/pgadmin/key.pem ana-macbook.pgadmin pgadmin.dev
mkcert -cert-file $certs_dir/mock/cert.pem -key-file $certs_dir/mock/key.pem ana-macbook.mock mock.dev
mkcert -cert-file $certs_dir/ldap/cert.pem -key-file $certs_dir/ldap/key.pem ana-macbook.ldap ldap.dev

