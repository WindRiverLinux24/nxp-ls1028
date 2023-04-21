OPENGL_PKGCONFIGS:remove:nxp-ls1028 = "glx"

LIBEGL = "libegl"
LIBEGL:nxp-ls1028 = "libegl-imx"

PACKAGECONFIG[glamor] := "-Dglamor=true,-Dglamor=false,libepoxy virtual/libgbm,${LIBEGL}"
