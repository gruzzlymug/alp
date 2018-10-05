nasm -f elf64 -w+orphan-labels skeleton.asm
ld -s -o skeleton skeleton.o
./skeleton
