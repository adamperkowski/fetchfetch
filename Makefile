fetchfetch: art.o stats.o fetchfetch.c
	$(CC) -o fetchfetch art.o stats.o fetchfetch.c

art.o: art.c
	$(CC) -c -o art.o art.c

stats.o: stats.c
	$(CC) -c -o stats.o stats.c

.PHONY: run
run: fetchfetch
	./fetchfetch

.PHONY: install
install: fetchfetch
	cp ./fetchfetch /usr/local/bin/fetchfetch
