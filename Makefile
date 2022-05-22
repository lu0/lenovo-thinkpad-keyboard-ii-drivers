# SPDX-License-Identifier: GPL-2.0
#
# Makefile for the HID driver
#

KDIR ?= /lib/modules/`uname -r`/build
obj-$(CONFIG_HID_LENOVO)	+= hid-lenovo.o

default:
	$(MAKE) -C $(KDIR) M=$$PWD

clean:
	$(MAKE) -C $(KDIR) M=$$PWD clean

modules_install:
	$(MAKE) -C $(KDIR) M=$$PWD modules_install
