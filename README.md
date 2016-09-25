# LetsEncrypt-NSFN

Automating LetsEncrypt on NearlyFreeSpeech.net

## TODO

<https://tty1.net/blog/2016/auto-renew-letsencrypt-cerificates-with-acme_tiny_en.html>
<https://raw.githubusercontent.com/diafygi/acme-tiny/master/acme_tiny.py>
<https://faq.nearlyfreespeech.net/full/tlssetup#tlssetup>
<https://members.nearlyfreespeech.net/wiki/HowTo/EnableTLS>

## Configuration

Add your domains to `domains.conf`:

```
devm33.com
www.devm33.com
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
