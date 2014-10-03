#Makefile
CC=gcc
CFLAGS=-I/usr/local/lua/include/ -L/usr/local/lua/lib/ -llua

mytestlib: mytestlib.c
	$(CC) -Wall -shared -fPIC -o mytestlib.so $(CFLAGS) mytestlib.c
clean: mytestlib
	rm -f mytestlib.so
