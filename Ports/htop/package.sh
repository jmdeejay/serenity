#!/usr/bin/env -S bash ../.port_include.sh
port=htop
version=3.2.1
workdir="${port}-${version}"
useconfigure="true"
files="https://github.com/htop-dev/htop/archive/refs/tags/${version}.tar.gz htop-${version}.tar.gz b5ffac1949a8daaabcffa659c0964360b5008782aae4dfa7702d2323cfb4f438"
auth_type=sha256
configopts=("--enable-unicode" "--host=${SERENITY_ARCH}")
# -pc-serenity

depends=("ncurses")

configure() {
    run ./autogen.sh
    run ./configure "${configopts[@]}"
}

build() {
    run make clean
}
