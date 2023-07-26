COMPATIBLE_MACHINE:nxp-ls1028 = "nxp-ls1028"

FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"
SRC_URI:nxp-ls1028 = "git://github.com/nxp-qoriq/dpdk;protocol=https;nobranch=1"
SRC_URI:append:nxp-ls1028 = " \
            file://0001-meson.build-march-and-mcpu-already-passed-by-Yocto.patch \
"
SRCREV:nxp-ls1028 = "c79a5810a17eff108cd49c314ab99f466ce31a0f"

MESON_BUILDTYPE:nxp-ls1028 = "release"

PACKAGECONFIG:append:nxp-ls1028 ??= "openssl"
PACKAGECONFIG[openssl] = ",,openssl"

DPDK_EXAMPLES:nxp-ls1028 = "all"
EXTRA_OEMESON:append:nxp-ls1028 = " \
		-Doptimization=3 \
		-Denable_driver_sdk=true \
		${@bb.utils.contains('DISTRO_FEATURES', 'vpp', '-Dc_args="-Ofast -fPIC -ftls-model=local-dynamic"', '', d)} \
"

RDEPENDS:${PN}:append:nxp-ls1028 = " bash python3-pyelftools"

inherit pkgconfig
