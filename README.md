# gather-deploy

> Docker and Helm files for Gather, to enable easy installation and deployment.

This repository enables a mono-tenant gather instance with only the basis of
the aether platform.

If you need a multi-tenant instance or enable more features like
CKAN or Elasticsearch integration you may visit:
[aether-bootstrap](https://github.com/eHealthAfrica/aether-bootstrap).

## Set-up instructions

You will need to add the following lines to your `/etc/hosts` or `C:\Windows\System32\Drivers\etc\hosts` file:

```text
# Gather
127.0.0.1    gather.local

# Aether Suite
127.0.0.1    aether.local
```

Execute the following command to initialize your local instance

```bash
./setup.sh
```

## Start instructions

Once that's done, you can just start Gather:

```bash
./start.sh
```

Access it at [http://gather.local](http://gather.local).

Use these credentials to log in:

- *Username*: **user** (`GATHER_USERNAME`)
- *Password*: **password** (`GATHER_PASSWORD`)
