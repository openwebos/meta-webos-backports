python __anonymous() {
    features = d.getVar("DISTRO_FEATURES", True).split()
    if "sysvinit" not in features:
        d.setVar("INHIBIT_UPDATERCD_BBCLASS", "1")
}
