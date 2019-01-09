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
		.group = 645,
		.kurss = 4232
	};

	fd = open(file, O_APPEND | O_RDWR, 0000777);
	if (fd == -1) {
		printf("File open error: %i (%s)\n", errno, strerror(errno));
		return fd;
	}
	
	err = write(fd, &data, sizeof(struct student));
	if (err == -1) {
		printf("File write error: %i\n", err);
		close(fd);
		return err;
	}
	
	printf("%lu bytes saved to %s\n", sizeof(struct student), file);
	close(fd);
	
	return 0;
}
