#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/mman.h>


void main(){
	int mem = open("/dev/mem", O_RDWR, 0);
	if(mem == -1) printf("Error opening /dev/mem\n");
	int inFile = open("tmp.in", O_RDONLY, 0);
	if(inFile == -1) printf("Error opening tmp.in\n");
	int outFile = open("tmp.out", O_WRONLY, 0);
	if(outFile == -1) printf("Error opening tmp.out\n");

	int * swOutBuf = mmap(NULL, 1280*720*3, PROT_WRITE, MAP_SHARED, mem, 0x1000000);
	if(swOutBuf == MAP_FAILED) printf("Call to mmap for swOutBuf failed\n");
	int * swInBuf = mmap(NULL, 1280*720*3, PROT_READ, MAP_SHARED, mem, 0x107E9000);
	if(swInBuf == MAP_FAILED) printf("Call to mmap for swInBuf failed\n");

	int bytes_read;
	int bytes_written;
	do{
		bytes_read = read(inFile, swOutBuf, 1280*720*3);

		bytes_written = write(outFile, swInBuf, bytes_read);

		printf("%d Bytes read\n", bytes_read);
		printf("%d Bytes written\n", bytes_written);

	}while(bytes_read != 0 && bytes_read != -1 && bytes_written != -1);


	if(bytes_read || bytes_written){
		printf("Error\n");
	}

	close(inFile);
	close(outFile);
	munmap(swInBuf, 1280*720*3);
	munmap(swOutBuf, 1280*720*3);
}
