DEPENDS:append:nxp-ls1028 = " patchelf-native"

RPROVIDES:${PN}:nxp-ls1028 += "imx-gpu-viv"
EXTRA_PROVIDES:append:nxp-ls1028 = " \
    virtual/libgles1 \
    virtual/libgles2 \
"
EXTRA_PROVIDES:append:nxp-ls1028 = " \
    virtual/libgbm \
"
PROVIDES_OPENVX:nxp-ls1028   = "virtual/libopenvx"
PROVIDES_OPENGLES3:nxp-ls1028   = "virtual/libgles3"

PACKAGES_GBM:nxp-ls1028 = "libgbm-imx libgbm-imx-dev"
PACKAGES_VULKAN:nxp-ls1028        = "libvulkan-imx libvulkan-imx-dev"
HAS_GBM:nxp-ls1028 = "true"
IS_MX8:nxp-ls1028 = "1"

FILES:libgbm-imx:nxp-ls1028 = "${libdir}/libgbm${REALSOLIBS} ${libdir}/libgbm${SOLIBSDEV} ${libdir}/libgbm_viv${SOLIBSDEV}"
FILES:libgbm-imx-dev:nxp-ls1028 = "${libdir}/pkgconfig/gbm.pc ${includedir}/gbm.h"
RDEPENDS:libgbm-imx:append:nxp-ls1028 = " libdrm"
RDEPENDS:libegl-imx:append:nxp-ls1028 = " libdrm"

RDEPENDS:libgal-imx:remove:nxp-ls1028 = "kernel-module-imx-gpu-viv"
COMPATIBLE_MACHINE:nxp-ls1028 = "nxp-ls1028"
