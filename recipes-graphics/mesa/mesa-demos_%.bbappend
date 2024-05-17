PACKAGECONFIG_APPEND_IF_GPU:append:nxp-ls1028 = " \
    ${@bb.utils.contains('DISTRO_FEATURES', 'wayland', 'wayland', '', d)} \
"

PACKAGECONFIG_REMOVE_IF_GPU:append:imxgpu = " glx"
DEPENDS:append:imxgpu = " libglu"
