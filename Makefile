csrc = $(wildcard *.c) \
$(wildcard crypto/*.c) 
#$(wildcard crypto/aes/*.c) \
#$(wildcard crypto/chacha20poly1305/*.c) \
#$(wildcard ed25519-donna/*.c) \
#$(wildcard crypto/fuzzer/*.c) \
#$(wildcard crypto/monero/*.c) \
#$(wildcard crypto/tools/*.c) \
#$(wildcard crypto/tests/*.c) 

obj=$(csrc: .c=.o)

myproject: $(obj)
	$(CC) $(CFLAGS) -Icrypto -Icrypto/ed25519-donna -o $@ $^


.PHONY: clean
clean:
	rm -f $(obj) myproject

