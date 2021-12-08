# README

This repository aim to create an automated and reproducible.
Example has been taken from https://wiki.alpinelinux.org/wiki/How_to_make_a_custom_ISO_image_with_mkimage.

To build the `.iso` you have to build the container:

    $ docker build -t builder:latest .

Once the image is ready you can run the following command:


    $ export PROFILENAME=apu
    $ docker run -ti --privileged --rm --name builder -v ${PWD}:/transport -w /root/aports/scripts builder:latest \
       sh mkimage.sh --tag edge \
            --outdir /transport \
	    --arch x86_64 \
	    --repository http://dl-cdn.alpinelinux.org/alpine/edge/main \
	    --repository http://dl-cdn.alpinelinux.org/alpine/latest-stable/community \
	    --profile $PROFILENAME
 
 The `.iso` will be saved in the working directory.  
 To test the iso you can use QEMU with the following command:

    $ qemu-system-x86_64 -enable-kvm -m 1024 -cdrom alpine-apu-hostapd-x86_64.iso -nographic 

Assuming the name of the iso is `alpine-apu-hostapd-x86_64.iso`.


