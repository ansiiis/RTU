#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>
#include <string.h>
#include <errno.h>

struct student {
	int group;
	int kurss;
};

int main (int argc, char **argv)
{
	int fd;
	int err = 0;
	int bytes = 1;
	int count = 0;
	char *file = "data.bin";
	struct student data;
	
	fd = open(file, O_RDWR, 0000777);
	if (fd == -1) {
		printf("File open error: %i (%s)\n", errno, strerror(errno));
		return fd;
	}
	
	printf("group\tkurss\n");
	while (bytes > 0) {
		bytes = read(fd, &data, sizeof(struct student));
		if (bytes == -1) {
			printf("File write error: %i (%s)\n", errno, strerror(errno));
			close(fd);
			return errno;
		}

		if (!bytes)
		        break;
		
		if (bytes < sizeof(struct student)) {
			printf("Error: read %i bytes out of %lu\n", bytes, sizeof(struct student));
			close(fd);
			return errno;
		}
		printf("%i\t%i\n", data.group, data.kurss);
		count++;
	}
	
	printf("Read %i records from %s\n", count, file);
	close(fd);
	
	return 0;
}
