FROM docker.io/library/alpine:latest

RUN apk add alpine-sdk build-base apk-tools alpine-conf busybox fakeroot    \
 && apk add syslinux xorriso squashfs-tools sudo mtools dosfstools grub-efi \
 && git clone https://gitlab.alpinelinux.org/alpine/aports.git /root/aports \
 && abuild-keygen -i -a -n \
 && apk update \
 && cd ~

COPY mkimg.apu.sh /root/aports/scripts/mkimg.apu.sh 

