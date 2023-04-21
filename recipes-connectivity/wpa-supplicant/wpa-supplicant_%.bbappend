FILESEXTRAPATHS:prepend:nxp-ls1028 := "${LAYER_PATH_meta-bsp}/recipes-connectivity/${PN}/${PN}:"

PACKAGECONFIG:append:nxp-ls1028 = " openssl"
