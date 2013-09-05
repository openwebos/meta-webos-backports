shell_do_install_append () {
	# oe-core/dylan doesn't install xterm-256color, append it here
	for x in xterm-256color
	do
		local termfile="$(find "${D}${datadir}/terminfo/" -name "${x}" 2>/dev/null)"
		local basedir="$(basename $(dirname "${termfile}"))"

		if [ -n "${termfile}" ]
		then
			install -d ${D}${sysconfdir}/terminfo/${basedir}
			mv ${termfile} ${D}${sysconfdir}/terminfo/${basedir}/
			ln -s /etc/terminfo/${basedir}/${x} \
				${D}${datadir}/terminfo/${basedir}/${x}
		fi
	done
}
