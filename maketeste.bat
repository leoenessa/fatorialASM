cls
del teste.exe
del teste.o
nasm -f win32 teste.asm -o teste.o
ld -L C:\Windows\System32 -l kernel32 -o teste.exe teste.o