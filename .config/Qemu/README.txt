Win10.xml
Included in here is the XML file for QEMU for the libvirt KVM system.
This was generated by the KVM system and can be used as a reference for configuring future systems. It includes handy pieces such as the audio system and configuration for Looking Glass.
I would not recommend directly dumping the whole thing into a new VM but instead take the relevant pieces out to use.

qemu.conf
This file contains the nvram variable for configuring the QEMU system as a whole. This allows the use of UEFI bios systems for launching VMs
