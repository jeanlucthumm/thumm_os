all: boot_sect

EXEC = boot_sect.bin

boot_sect: $(EXEC)


%.bin: %.asm
	nasm -f bin $< -o $@

clean:
	@rm -rf *.bin *.o

run: $(EXEC)
	qemu-system-x86_64 -drive format=raw,file=$(EXEC)
