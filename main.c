#include<stdio.h>
#include<string.h>
#include"bip39.h"

void dectoHex(uint8_t);

void dectoHex(uint8_t seed)
{
    char hexno[3];
    int i=0;

    while(seed)
    {
        int temp=0;

        temp = seed%16;

        if(temp<10)
            hexno[i++] = temp+48;

        else
            hexno[i++] = temp+87;

        seed = seed/16;
    }
    printf("%c%c", hexno[1], hexno[0]);
}

int main()
{
    const char* mnemonic = "garden reject beauty inch scissors rifle amazing couch bacon multiply swim poverty impose spray ugly term stamp prevent nothing mutual awful project wrist movie";
    uint8_t seed[64];
    const char* passphrase = "";

    mnemonic_to_seed(mnemonic, passphrase, seed, NULL);

    printf("The seed phrase is: ");

    for (int i=0; i<64; i++) {
        dectoHex( seed[i] );
    }
    printf("\n");
}

