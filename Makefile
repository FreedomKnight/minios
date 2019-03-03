
mbr.img: mbr.o
	ld -Ttext 0x7c00 --oformat binary -o mbr.img mbr.o
mbr.o: mbr.s
	as mbr.s -o mbr.o
