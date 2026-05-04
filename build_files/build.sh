#!/bin/bash

set -ouex pipefail

### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/43/x86_64/repoview/index.html&protocol=https&redirect=1

# this installs a package from fedora repos
dnf5 -y copr enable g3tchoo/prismlauncher
dnf5 install -y prismlauncher java-25-openjdk jemalloc-devel bsdtar obs-studio

wget https://github.com/tesselslate/waywall/releases/download/0.2026.02.06/waywall-0.5-1.fc42.x86_64.rpm
mkdir /tmp/waywall
bsdtar xvf ./waywall-0.5-1.fc42.x86_64.rpm -C /tmp/waywall
cp -r /tmp/waywall/usr/bin/* /usr/bin 
cp -r /tmp/waywall/usr/local/lib64/* /usr/lib64
cp -r /tmp/waywall/usr/share/doc/* /usr/share/doc
cp -r /tmp/waywall/usr/share/licenses /usr/share/licenses
dnf5 install -y egl-wayland libspng 

rm ./waywall-0.5-1.fc42.x86_64.rpm
curl -o /usr/bin/calcsens.py https://raw.githubusercontent.com/Esensats/mcsr-calcsens/refs/heads/master/calcsens.py
sed -i '1i #!/usr/bin/env python' /usr/bin/calcsens.py
chmod +x /usr/bin/calcsens.py
curl -Lo /usr/bin/mapcheck.jar https://github.com/cylorun/Map-Check/releases/download/v4.3.0/Map-Check-4.3.0-all.jar
curl -Lo /usr/bin/modcheck.jar https://github.com/tildejustin/modcheck/releases/download/3.1.1/modcheck-3.1.1.jar

dnf5 -y copr disable g3tchoo/prismlauncher

# Use a COPR Example:
#
# dnf5 -y copr enable ublue-os/staging
# dnf5 -y install package
# Disable COPRs so they don't end up enabled on the final image:
# dnf5 -y copr disable ublue-os/staging

#### Example for enabling a System Unit File

systemctl enable podman.socket
