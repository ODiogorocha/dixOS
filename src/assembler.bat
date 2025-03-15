ECHO OFF
cls

echo montando arquivo "Booloader"
nams -f bin bootloader.asm -o Binary/bootloader.bin

echo montando o arquivo "Kernel"
nasm -f bin kernel.asm -o Binary/Kernel.bin
pause