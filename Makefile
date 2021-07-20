all: build


build: download
	chmod -Rv 644 build/contrib/
	fpm -s dir -f -t deb \
		-n node_exporter \
		-v $(VERSION) \
		--iteration $(ITERATION) \
		--after-install build/contrib/node_exporter.postinstall \
		--after-remove build/contrib/node_exporter.postrm \
		-p build/packages \
		/tmp/node_exporter/node_exporter=/usr/bin/node_exporter \
		build/contrib/node_exporter.service=/lib/systemd/system/node_exporter.service \
		build/contrib/node_exporter.defaults=/etc/default/node_exporter \
		build/contrib/node_exporter.preset=/usr/lib/systemd/system-preset/node_exporter.preset


download:
	cd /tmp && curl -Lo node_exporter.tar.gz https://github.com/prometheus/node_exporter/releases/download/v$(VERSION)/node_exporter-$(VERSION).linux-amd64.tar.gz
	cd /tmp && tar -xvzf /tmp/node_exporter.tar.gz && mv node_exporter-$(VERSION).linux-amd64 node_exporter
