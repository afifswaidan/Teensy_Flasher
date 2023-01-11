CC ?= i586-mingw32msvc-gcc
CFLAGS ?= -O2 -Wall
mHiL_flasher.exe: teensy_flasher.c
	$(CC) $(CFLAGS) -s -o teensy_flasher.exe teensy_flasher.c -lhid -lsetupapi -lwinmm

clean:
	rm -f teensy_flasher teensy_flasher.exe*
