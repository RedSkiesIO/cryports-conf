.PHONY: dbuild-cryptos-conf-x8664
dbuild-cryptos-conf-x8664:
	docker run \
		-v `pwd`:/home/builder/cryptos/src \
		-v ${CRYPORTS_DIR}/_data/abuild:/home/builder/.abuild \
		-v ${CRYPORTS_DIR}/artifacts/repo:/home/builder/packages \
		dbuild:x8664 \
		sh -c "cd cryptos/src && abuild checksum && abuild -R -c"

.PHONY: dbuild-cryptos-conf-armhf
dbuild-cryptos-conf-armhf:
	docker run \
		-v `pwd`:/home/builder/cryptos/src \
		-v ${CRYPORTS_DIR}/_data/abuild:/home/builder/.abuild \
		-v ${CRYPORTS_DIR}/artifacts/repo:/home/builder/packages \
		dbuild:armhf \
		sh -c "cd cryptos/src && abuild checksum && abuild -c"

.PHONY: dbuild-cryptos-conf-aarch64
dbuild-cryptos-conf-aarch64:
	docker run \
		-v `pwd`:/home/builder/cryptos/src \
		-v ${CRYPORTS_DIR}/_data/abuild:/home/builder/.abuild \
		-v ${CRYPORTS_DIR}/artifacts/repo:/home/builder/packages \
		dbuild:aarch64 \
		sh -c "cd cryptos/src && abuild checksum && abuild -c"
