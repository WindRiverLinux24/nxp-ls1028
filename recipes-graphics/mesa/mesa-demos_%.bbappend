PACKAGECONFIG_REMOVE_IF_GPU:nxp-ls1028       = "x11"

PACKAGECONFIG_APPEND_IF_GPU:append:nxp-ls1028 = " \
    ${@bb.utils.contains('DISTRO_FEATURES', 'wayland', 'wayland vg', '', d)} \
"
PACKAGECONFIG_APPEND_IF_GPU:append:nxp-ls1028 = " glx"


