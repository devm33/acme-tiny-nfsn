# LetsEncrypt-NSFN

Automating LetsEncrypt on NearlyFreeSpeech.net

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
