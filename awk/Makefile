default: all
all: installation

installation:
	(gcc -fPIC -shared -DHAVE_CONFIG_H -c -O -g -I/usr/include Dump.c)
	(gcc -o Dump.so -shared Dump.o)
	(cp Dump.so  /usr/local/lib/gawk/)
