# gather-deploy

Docker and Helm files for Gather, to enable easy installation and deployment.

This repo uses the `aether-bootstrap` repo as a submodule, for easy local
installation. This means that you need to use the following command
to clone this repo:

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

You will need to create an `.env` file with the required environment variables.
You need to use the following command to do that:

```bash
./scripts/generate_env_vars.sh
```

Once that's done, you can just do `./gather-start.sh` to start Gather,
and access it at [http://gather.local](http://gather.local).
