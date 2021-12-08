# README

This repository aim to create an automated and reproducible Alpine Linux ISO 
for PCEngines APU2.  
Inspiration has been taken from [here](https://wiki.alpinelinux.org/wiki/How_to_make_a_custom_ISO_image_with_mkimage).

To build the `.iso` you have to build the container:

    $ make builder

Once the image is ready you can run the following command:

    $ make iso
 
 The `.iso` will be saved in the working directory.  
 To test the iso you can use QEMU with the following command:

    $ qemu-system-x86_64 -enable-kvm -m 1024 \ 
	    		  -cdrom alpine-apu-hostapd-x86_64.iso \
			  -nographic 

Assuming the name of the iso is `alpine-apu-hostapd-x86_64.iso`.


