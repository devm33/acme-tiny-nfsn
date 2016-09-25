#!/bin/bash

# set working directory
DIR="$(dirname $0)"
mkdir -p "$DIR/data"
cd "$DIR/data"

## Create account key for LetsEncrypt.org once
if [ ! -f account.key ]; then
  openssl genrsa 4096 > account.key
  #openssl rsa -in account.key -pubout > account.pub
fi

## Create CSR and key once
if [ ! -f domain.csr ]; then

  CNF=/etc/ssl/openssl.cnf
  if [ ! -f $CNF ]; then # maybe testing on osx
    CNF=/System/Library/OpenSSL/openssl.cnf
    if [ ! -f $CNF ]; then
      echo 'Error: Cant find openssl.cnf, exiting'
      exit 1
    fi
  fi

  if [ ! -f domains.conf ]; then
    echo 'Error: Cant find domains.conf, please place in ./data/domain.conf'
    exit 1
  fi

  DOMAINS='DNS:'
  while read line; do
    echo $line
  done <domains.conf


fi
echo "WIP"
exit


cp $CNF openssl.cnf

echo '[SAN]' >> openssl.cnf
echo 'subjectAltName=DNS:devm33.com,DNS:www.devm33.com' >> openssl.cnf

openssl req -new \
  -keyout domain.key.pem -newkey rsa:4096 -sha256 -nodes \
  -subj '/CN=devm33.com' -reqexts SAN \
  -config openssl.cnf \
  -out domain.csr #.der -outform DER

