# gather-deploy

Docker and Helm files for Gather, to enable easy installation and deployment. 

This repo uses the `aether-bootstrap` repo as a submodule, for easy local installation. This means that you need to use the following command to clone this repo:

```
git clone --recurse-submodules
```

You will need to add the following line to your `/etc/hosts` file:

```
127.0.0.1    gather.local,kernel.aether.local,odk.aether.local,ui.aether.local
```

Once that's done, you can just do `docker-compose up` to start Gather, and access it at [http://gather.local](http://gather.local).