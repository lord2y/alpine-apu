profile_apu() {
        profile_extended
        kernel_cmdline="unionfs_size=512M console=tty0 console=ttyS0,115200"
        syslinux_serial="0 115200"
	apkovl="genapkovl-apu.sh"
	hostname="apu2"
        apks="$apks mdadm zsh iw dmidecode flashrom iperf"
}
