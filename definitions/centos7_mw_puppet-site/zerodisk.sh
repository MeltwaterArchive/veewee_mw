# Zero out the free space to save space in the final image:
dd if=/dev/zero of=/EMPTY bs=1M 2> /dev/null
rm -f /EMPTY
