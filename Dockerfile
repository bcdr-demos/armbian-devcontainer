# PLEASE DO NOT MODIFY THIS FILE. IT IS AUTOGENERATED AND WILL BE OVERWRITTEN. Please don't build this Dockerfile yourself either. Use Armbian ./compile.sh instead.
FROM ghcr.io/armbian/docker-armbian-build:armbian-ubuntu-jammy-latest
# PLEASE DO NOT MODIFY THIS FILE. IT IS AUTOGENERATED AND WILL BE OVERWRITTEN. Please don't build this Dockerfile yourself either. Use Armbian ./compile.sh instead.
RUN echo "--> CACHE MISS IN DOCKERFILE: apt packages." && \
 DEBIAN_FRONTEND=noninteractive apt-get -y update && \
 DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends bash git psmisc uuid-runtime bc binfmt-support bison libc6-dev make dpkg-dev gcc ca-certificates ccache cpio device-tree-compiler dialog dirmngr dosfstools dwarves flex gawk gnupg gpg imagemagick jq kmod libbison-dev libelf-dev libfdt-dev libfile-fcntllock-perl libmpc-dev libfl-dev liblz4-tool libncurses-dev libssl-dev libusb-1.0-0-dev linux-base locales lsof ncurses-base ncurses-term ntpdate patchutils pkg-config pv qemu-user-static rsync swig u-boot-tools udev uuid-dev zlib1g-dev file tree expect colorized-logs unzip zip pigz xz-utils pbzip2 lzop zstd parted gdisk fdisk aria2 curl wget axel parallel python3-dev python3-distutils python3-setuptools python3-pip libffi-dev python2 python2-dev gcc-x86-64-linux-gnu gcc-aarch64-linux-gnu gcc-arm-linux-gnueabihf gcc-arm-linux-gnueabi gcc-riscv64-linux-gnu debian-archive-keyring libc6-amd64-cross mkbootimg g++-aarch64-linux-gnu g++ btrfs-progs cryptsetup openssh-client f2fs-tools nilfs-tools xfsprogs zerofree lvm2 qemu-utils qemu-utils libudev-dev libusb-1.0-0-dev dh-autoreconf build-essential gcc-arm-linux-gnueabi gcc-or1k-elf qemu-utils qemu-utils
RUN sed -i 's/# en_US.UTF-8/en_US.UTF-8/' /etc/locale.gen
RUN locale-gen
WORKDIR /armbian
ENV ARMBIAN_RUNNING_IN_CONTAINER=yes
ADD . /armbian/
# RUN echo "--> CACHE MISS IN DOCKERFILE: running Armbian requirements initialization." && \
#  ARMBIAN_INSIDE_DOCKERFILE_BUILD="yes" /bin/bash "/armbian/compile.sh" requirements SHOW_LOG=yes && \
#  rm -rf "/armbian/output" "/armbian/.tmp" "/armbian/cache"
