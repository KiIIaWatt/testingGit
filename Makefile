all: testinggit

WARNINGS = -Wall
DEBUG = -ggdb -fno-omit-frame-pointer
OPTIMIZE = -O2

testinggit: Makefile testinggit.c
	$(CC) -o $@ $(WARNINGS) $(DEBUG) $(OPTIMIZE) testinggit.c

clean:
	rm -f testinggit

# Builder will call this to install the application before running.
install:
	echo "Installing is not supported"

# Builder uses this target to run your application.
run:
	./testinggit

