csrc = $(wildcard *.c) \
$(wildcard crypto/*.c)

obj=$(csrc: .c=.o)

myproject: $(obj)
	$(CC) $(CFLAGS) -Icrypto -Icrypto/ed25519-donna -o $@ $^


.PHONY: clean
clean:
	rm -f $(obj) myproject

