FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI:append:nxp-ls1028 = "\
    file://profile \
    file://weston.inils1028 \
"

do_install:append:nxp-ls1028() {
    install -Dm0755 ${WORKDIR}/profile ${D}${sysconfdir}/profile.d/weston.sh
    install -D -p -m0644  ${WORKDIR}/weston.inils1028  ${D}${sysconfdir}/xdg/weston/weston.ini
}
