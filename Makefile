.PHONY: dbuild-cryptos-conf-x8664
dbuild-cryptos-conf-x8664:
	docker run \
		-v ${PWD}:/home/builder/cryptos/src \
		-v ${KEY_DIR}:/home/builder/.abuild \
		-v ${PACKAGES_DIR}:/home/builder/packages \
		cryptosregistry.azurecr.io/docker-build:x8664 \
		sh -c "cd cryptos/src && abuild checksum && abuild -R -c"

.PHONY: dbuild-cryptos-conf-armhf
dbuild-cryptos-conf-armhf:
	docker run \
		-v ${PWD}:/home/builder/cryptos/src \
		-v ${KEY_DIR}:/home/builder/.abuild \
		-v ${PACKAGES_DIR}:/home/builder/packages \
		cryptosregistry.azurecr.io/docker-build:armhf \
		sh -c "cd cryptos/src && abuild checksum && abuild -r -c"

.PHONY: dbuild-cryptos-conf-aarch64
dbuild-cryptos-conf-aarch64:
	docker run \
		-v ${PWD}:/home/builder/cryptos/src \
		-v ${KEY_DIR}:/home/builder/.abuild \
		-v ${PACKAGES_DIR}:/home/builder/packages \
		cryptosregistry.azurecr.io/docker-build:aarch64 \
		sh -c "cd cryptos/src && abuild checksum && abuild -r -c"
