cc65 -Oirs hello.c --add-source
ca65 crt0.s
ca65 hello.s -g

ld65 -C nrom_32k_vert.cfg -o hello.nes crt0.o hello.o nes.lib -Ln labels.txt

rm -f *.o
