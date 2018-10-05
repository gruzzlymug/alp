nasm -f elf -w+ophan-labels skeleton2.asm
ld -m elf_i386 -s -o skeleton2 skeleton2.o
./skeleton2
