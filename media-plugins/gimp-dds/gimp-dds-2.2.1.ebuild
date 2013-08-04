EAPI=5

DESCRIPTION="DDS GIMP plugin"
HOMEPAGE="https://gimp-dds.googlecode.com"
SRC_URI="https://gimp-dds.googlecode.com/files/${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
    >=media-gfx/gimp-2.4.0
	x11-libs/gtk+:2
"
DEPEND="${RDEPEND}"

src_compile() {
	emake dds
}

src_install() {
	exeinto $(gimptool-2.0 --gimpplugindir)/plug-ins
	doexe dds
	dodoc -r doc README TODO
}
