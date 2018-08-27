# gather-deploy

> Docker and Helm files for Gather, to enable easy installation and deployment.

This repo uses the `aether-bootstrap` repo as a submodule. This means that
you need to use the following command to clone this repo:

```bash
git clone --recurse-submodules
```

You will need to add the following lines to your `/etc/hosts` file:

```text
# Gather
127.0.0.1    gather.local

# Aether Suite
127.0.0.1    kernel.aether.local odk.aether.local ui.aether.local
```

Once that's done, you can just start Gather,
and access it at [http://gather.local](http://gather.local).

```bash
./gather-start.sh
```

### Update Gather and Aether release version

Occasionally you will need to regenerate the `.env` file with the new and
required environment variables that include the last Gather and Aether releases.
You need to use the following command to do that (favorite) or update the file
manually:

```bash
./scripts/generate_env_vars.sh
```
