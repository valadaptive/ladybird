#!/usr/bin/env -S bash ../.port_include.sh
port='gettext'
version='0.22'
useconfigure='true'
files=(
    "https://ftpmirror.gnu.org/gettext/gettext-${version}.tar.gz#49f089be11b490170bbf09ed2f51e5f5177f55be4cc66504a5861820e0fb06ab"
)
depends=(
    'libiconv'
)
use_fresh_config_sub='true'
config_sub_paths=(
    'build-aux/config.sub' 
    'libtextstyle/build-aux/config.sub'
)
configopts=(
    '--disable-curses'
    "--with-sysroot=${SERENITY_INSTALL_ROOT}"
)
