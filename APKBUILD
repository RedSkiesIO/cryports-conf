# Contributor: James Kirby <james.kirby@atlascity.io>
# Maintainer: James Kirby <james.kirby@atlascity.io>
pkgname=alpine-conf
pkgver=3.8.0
pkgrel=40
pkgdesc="CryptOS configuration management scripts"
url=http://git.alpinelinux.org/cgit/$pkgname
arch="all"
license="MIT"
depends="openrc>=0.24.1-r6 busybox>=1.26.1-r3"
source="http://dev.alpinelinux.org/archive/alpine-conf/alpine-conf-$pkgver.tar.xz
	0001-update-kernel-handle-vanilla-suffix-in-System.map-co.patch
	0001-setup-keymap-keymaps-OpenRC-service-has-been-renamed.patch
	s390x-bootloader.patch
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

sha512sums="13fed0532aa84c39d54d2c905f31276c4b8f2d596c33bebd796f36e2e796f2d66c172440c20d19e8753f531204cacecc79ca24cd3ec1b24e3e51de251297207b  alpine-conf-3.7.0.tar.xz
fdeb9f0c67a81b545e372199558fc81222f0c6599d42f0731f7fe0398bc0b9deb631c8e98f7147fb63b570ac0e97497d416332ddbfefbb833073df9c1baffee0  0001-update-kernel-handle-vanilla-suffix-in-System.map-co.patch
7042eb135af468cf39644fae1d96fe2e7ae1f02a15e25156fbf74aef9b83c382c7a925ed9e02d738199b923164ed1847e4bd876e9ee96818dcb4c2f6ba2b5404  0001-setup-keymap-keymaps-OpenRC-service-has-been-renamed.patch
bb152798caf602d99a22edc127dd1bc61bbfb012f62978f65f7126c0f704ebfa53500c93ff2f0d654e88979ab2f7f2e1f6b58b9d2235689c3f993292db8da7bc  s390x-bootloader.patch"
