# LetsEncrypt-NSFN

Automating LetsEncrypt on NearlyFreeSpeech.net

## TODO

<https://faq.nearlyfreespeech.net/full/tlssetup#tlssetup>

<https://members.nearlyfreespeech.net/wiki/HowTo/EnableTLS>

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

### `acme_tiny.py`

Taken from <https://github.com/diafygi/acme-tiny>

Relies on being available at this location
<https://raw.githubusercontent.com/diafygi/acme-tiny/master/acme_tiny.py>

### `nfsn`

Command available on NearlyFreeSpeech server. See FAQ on TLS usage:

- <https://faq.nearlyfreespeech.net/full/tlssetup#tlssetup>
- <https://members.nearlyfreespeech.net/wiki/HowTo/EnableTLS>
