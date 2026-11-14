#!/bin/bash

set -ouex pipefail

wget https://github.com/token2/token2-fido-bridge/releases/download/v0.1.4/token2-fido-bridge-0.1.4-1.fc44.x86_64.rpm
dnf5 install -y token2-fido-bridge-0.1.4-1.fc44.x86_64.rpm

dnf5 remove -y openrazer kmod-openrazer ayaneo-platform hid-fanatecff hid-fanatecff-akmod-modules kmod-ayaneo-platform
