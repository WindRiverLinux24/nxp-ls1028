do_install_append_nxp-ls1028() {
    for keyword in \
	net.ipv4.conf.all.log_martians \
    ; do
        sed -i 's,'"$keyword"'=.*,'"$keyword"'=0,' ${D}${sysconfdir}/sysctl.conf
    done
}
