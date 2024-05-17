FILESEXTRAPATHS:prepend:nxp-ls1028 := "${LAYER_PATH_meta-imx-bsp}/recipes-connectivity/${PN}/${PN}:"

SRC_URI:append:nxp-ls1028 = " file://openssl-3.0-add-Kernel-TLS-configuration.patch \
            file://0001-e_devcrypto-add-func-ptr-for-init-do-ctrl.patch \
            file://0002-e_devcrypto-add-support-for-TLS1.2-algorithms-offloa.patch"

PACKAGECONFIG:append:nxp-ls1028 = " cryptodev-linux"

EXTRA_OECONF:append:nxp-ls1028 = " enable-ktls"

do_install:append:nxp-ls1028 () {
    cp --dereference -R crypto  ${D}${includedir}
}
