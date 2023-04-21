SRC_URI:remove = "file://0002-e_devcrypto-add-support-for-TLS1.2-algorithms-offloa.patch"

PACKAGECONFIG:append:nxp-ls1028 = " cryptodev-linux"

do_install:append:nxp-ls1028 () {
    cp --dereference -R crypto  ${D}${includedir}
}
