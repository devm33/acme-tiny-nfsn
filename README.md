# acme-tiny-nfsn

Automating getting an SSL certificate with the ACME protocol with LetsEncrypt.org for hosting on NearlyFreeSpeech.net

## Configuration

Add your CSR config to `data/csr.conf`, e.g.

```
/C=US/emailAddress=devm33.com@respectmyprivacy.com/CN=devm33.com
DNS:devm33.com,DNS:www.devm33.com
````

## Usage

- Run: `./letsencrypt.sh`
- Automate: <https://faq.nearlyfreespeech.net/section/programming/cron#cron>

Note that if you don't already have https set up, or you've let your certificate expire, you'll need to set "Canonical HTTPS" to "off" in the NearlyFreeSpeech settings (Config Information -> Canonical URL -> Edit) so LetsEncrypt can successfully access http://<your_domain>/.well-known/acme-challenge/

## Dependencies

### [Let's Encrypt](https://letsencrypt.org/)

Obviously, dependent as the CA. In addition to dependency points in acme_tiny,
this script also depends on the chain certificate Let's Encrypt is using,
currently Let’s Encrypt Authority X3 (IdenTrust cross-signed).

Warning this could change, check here: <https://letsencrypt.org/certificates/>

### [acme_tiny](https://github.com/diafygi/acme-tiny)

Script that negotiates certificate with LetsEncrypt using ACME protocol.

Expected to be available at this location
<https://raw.githubusercontent.com/diafygi/acme-tiny/master/acme_tiny.py>

### nfsn

Command available on NearlyFreeSpeech servers. See FAQ on TLS usage:

- <https://faq.nearlyfreespeech.net/full/tlssetup#tlssetup>
- <https://members.nearlyfreespeech.net/wiki/HowTo/EnableTLS>
