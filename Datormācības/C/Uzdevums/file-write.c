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
	char *file = "data.bin";
	struct student data = { 
		.group = 3,
		.kurss = 4
	};
	
	fd = open(file, O_CREAT | O_TRUNC | O_RDWR, 0000777);
	if (fd == -1) {
		printf("File open error: %i (%s)\n", errno, strerror(errno));
		return fd;
	}
	
	err = write(fd, &data, sizeof(data));
	if (err == -1) {
		printf("File write error: %i (%s)\n", errno, strerror(errno));
		close(fd);
		return err;
	}
	
	printf("Student data saved to %s\n", file);
	close(fd);
	
	return 0;
}
