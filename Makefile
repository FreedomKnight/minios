
boot.img: boot.o
	ld -Ttext 0x7c00 --oformat binary -o boot.img boot.o
boot.o: boot.s
	as boot.s -o boot.o
