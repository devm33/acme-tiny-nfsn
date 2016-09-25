# ACME-tiny-NFSN

Automating ACME protocol with LetsEncrypt.org for hosting on NearlyFreeSpeech.net

## TODO

TODO: test it...

- <https://faq.nearlyfreespeech.net/full/tlssetup#tlssetup>
- <https://members.nearlyfreespeech.net/wiki/HowTo/EnableTLS>

## Configuration

Add your CSR config to `data/csr.conf`, e.g.

```
/C=US/emailAddress=devm33.com@respectmyprivacy.com/CN=devm33.com
DNS:devm33.com,DNS:www.devm33.com
````

## Usage

Run
```sh
./letsencrypt.sh
```

Automate: <https://faq.nearlyfreespeech.net/section/programming/cron#cron>

## Dependencies

### [Let's Encrypt](https://letsencrypt.org/)

Obviously, dependent as the CA. In addition to dependency points in acme_tiny,
this script also depends on the chain certificate Let's Encrypt is using,
currently Let’s Encrypt Authority X3 (IdenTrust cross-signed).

Warning this could change, check here: <https://letsencrypt.org/certificates/>

### `acme_tiny.py`

Taken from <https://github.com/diafygi/acme-tiny>

Relies on being available at this location
<https://raw.githubusercontent.com/diafygi/acme-tiny/master/acme_tiny.py>

### `nfsn`

Command available on NearlyFreeSpeech server. See FAQ on TLS usage:

- <https://faq.nearlyfreespeech.net/full/tlssetup#tlssetup>
- <https://members.nearlyfreespeech.net/wiki/HowTo/EnableTLS>
