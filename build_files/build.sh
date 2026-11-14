#!/bin/bash

set -ouex pipefail
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/43/x86_64/repoview/index.html&protocol=https&redirect=1

# this installs a package from fedora repos
#dnf5 install -y tmux

# Use a COPR Example:
#
# dnf5 -y copr enable ublue-os/staging
# dnf5 -y install package
# Disable COPRs so they don't end up enabled on the final image:
# dnf5 -y copr disable ublue-os/staging

#### Example for enabling a System Unit File

#systemctl enable podman.socket

# Okay! Time to inject the RPM for token2-fido-bridge

wget https://github.com/token2/token2-fido-bridge/releases/download/v0.1.4/token2-fido-bridge-0.1.4-1.fc44.x86_64.rpm
dnf5 install -y token2-fido-bridge-0.1.4-1.fc44.x86_64.rpm

dnf5 remove -y openrazer kmod-openrazer ayaneo-platform hid-fanatecff hid-fanatecff-akmod-modules kmod-ayaneo-platform
