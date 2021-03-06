# Copyright (c) 2012 The Chromium OS Authors. All rights reserved.
# Distributed under the terms of the GNU General Public License v2

EAPI="4"

DESCRIPTION="CoreOS developer images and containers (meta package)"
HOMEPAGE="http://coreos.com"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 arm x86"
IUSE=""

# The dependencies here are meant to capture "all the packages
# developers want to use for development, test, or debug".  This
# category is meant to include all developer use cases, including
# software test and debug, performance tuning, hardware validation,
# and debugging failures.
RDEPEND="
	app-portage/gentoolkit
	coreos-base/coreos
	coreos-base/coreos-experimental
	coreos-base/gmerge
	dev-lang/python
	dev-python/dbus-python
	dev-python/pygobject
	dev-util/strace
	dev-vcs/repo
	net-analyzer/netperf
	net-analyzer/tcpdump
	net-dialup/minicom
	net-misc/dhcp
	net-misc/iperf
	net-misc/iputils
	net-misc/openssh
	net-misc/rsync
	sys-apps/coreutils
	sys-apps/diffutils
	sys-apps/file
	sys-apps/findutils
	sys-apps/i2c-tools
	sys-apps/kbd
	sys-apps/less
	sys-apps/portage
	sys-apps/smartmontools
	sys-apps/usbutils
	sys-apps/which
	sys-devel/gcc
	sys-devel/gdb
	sys-fs/fuse
	sys-fs/lvm2
	sys-fs/sshfs-fuse
	sys-process/ktop
	sys-process/procps
	sys-process/psmisc
	"

# TODO:  sys-apps/iotools
X86_DEPEND="
	app-benchmarks/i7z
	sys-apps/pciutils
"

RDEPEND="${RDEPEND} x86? ( ${X86_DEPEND} )"
RDEPEND="${RDEPEND} amd64? ( ${X86_DEPEND} )"
