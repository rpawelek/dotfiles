# Full Disk Encryption with TPM2 Autodecrypt

```
$ lsblk
├─nvme-1n1p1 /boot/efi
├─nvme-1n1p2 /boot
└─nvme-1n1p3 /
```

```
# systemd-cryptenroll --wipe-slot tpm2 --tpm2-device auto --tpm2-pcrs "1+7+11+12+14+15" /dev/nvme0n1p3
# dracut -f
```

Add `tpm2-device=auto` as option to /etc/crypttab

To re-build initramfs after firmware or bootloader update:
`# dracut -f`

[systemd-cryptenroll docs](https://man.archlinux.org/man/systemd-cryptenroll.1)

