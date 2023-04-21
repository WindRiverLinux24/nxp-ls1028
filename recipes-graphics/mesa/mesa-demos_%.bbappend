PACKAGECONFIG_APPEND_IF_GPU:append:nxp-ls1028 = " \
    ${@bb.utils.contains('DISTRO_FEATURES', 'wayland', 'wayland', '', d)} \
"

PACKAGECONFIG_REMOVE_IF_GPU:append:imxgpu = " glx"
PACKAGECONFIG_REMOVE_IF_GPU:remove:imxgpu = "glu"
PACKAGECONFIG_APPEND_IF_GPU:remove:imxgpu = "glut"
DEPENDS:append:imxgpu = " libglu"
