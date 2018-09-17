# Contributor: James Kirby <james.kirby@atlascity.io>
# Maintainer: James Kirby <james.kirby@atlascity.io>
pkgname=alpine-conf
pkgver=3.8.420
pkgrel=420
pkgdesc="CryptOS configuration management scripts"
url=http://git.alpinelinux.org/cgit/$pkgname
arch="all"
license="MIT"
depends="openrc>=0.24.1-r6 busybox>=1.26.1-r3"
source="http://dev.alpinelinux.org/archive/alpine-conf/alpine-conf-3.8.0.tar.xz
	"

builddir="$srcdir"/$pkgname-$pkgver
build() {
	cd "$builddir"
	make VERSION=$pkgver-r$pkgrel
}

package() {
	cd "$builddir"
	make install PREFIX= DESTDIR="$pkgdir"
	for i in commit exclude include status update; do
		ln -s lbu "$pkgdir"/sbin/lbu_$i
	done
}

sha512sums="402d01dbc2b2aa987658f689e8a88feda6a633a393e746d2db3ee108274ff20be21f292406fa4aad543a665edfaff342795deb2c59cbc8c2ff8577f8f7c2485d  alpine-conf-3.8.0.tar.xz"
