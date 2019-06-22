all: boot_simple

boot_simple: boot_sect_simple

boot_sect_simple: boot_sect_simple.asm
	nasm -f bin boot_sect_simple.asm -o boot_sect.bin

clean:
	@rm -rf *.bin

run: boot_simple
	qemu-system-x86_64 -drive format=raw,file=boot_sect.bin
