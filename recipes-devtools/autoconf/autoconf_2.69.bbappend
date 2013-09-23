# Backported from
# http://git.openembedded.org/openembedded-core/commit/?id=367a19aaf31bcf997f10d045e7954cc800189052
# in order to fix apr-util-native issues caused by libtool using
# bash/dash inconsistently between hosts using the same SSTATE_MIRROR 
# https://bugzilla.yoctoproject.org/show_bug.cgi?id=5174

FILESEXTRAPATHS_prepend := "${THISDIR}/${BPN}:"

SRC_URI += "file://preferbash.patch"
