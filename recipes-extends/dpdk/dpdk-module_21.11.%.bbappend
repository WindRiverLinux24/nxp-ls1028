COMPATIBLE_MACHINE:nxp-ls1028 = "nxp-ls1028"

SRC_URI:nxp-ls1028 = "git://github.com/nxp-qoriq/dpdk;protocol=https;nobranch=1"
SRC_URI:append:nxp-ls1028 = " \
            file://0001-Makefile-add-makefile.patch \
"
SRCREV:nxp-ls1028 = "eb28c02bc1221e788688f0de9ff5b2bb1a062006"