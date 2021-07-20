![build](https://github.com/asteny/node_exporter-deb/actions/workflows/build.yml/badge.svg)

Node exporter deb
==========

Deb package with [Node_exporter](https://github.com/prometheus/node_exporter) for Ubuntu (xenial, bionic, focal)

Installation
------------
```bash
apt-get update
apt-get install gnupg2 apt-transport-https ca-certificates -y
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys EA8AECDE414187DB
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys A57ED69D49D1012A
printf "deb https://packagecloud.io/the_asten/prometheus/ubuntu/ focal main \ndeb-src https://packagecloud.io/the_asten/prometheus/ubuntu/ focal main" | tee -a /etc/apt/sources.list.d/prometheus.list
apt-get update
apt-get install node-exporter -y
```

Special thanks for the ability to use the package repository for open source projects - :rocket: https://packagecloud.io :rocket:

[All package versions in packagecloud.io repo](https://packagecloud.io/the_asten/prometheus)
-------------------------------------------------------------------------------
