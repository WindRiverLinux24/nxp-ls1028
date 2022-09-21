PACKAGECONFIG_APPEND_IF_GPU:append:nxp-ls1028 = " \
    ${@bb.utils.contains('DISTRO_FEATURES', 'wayland', 'wayland vg', '', d)} \
"