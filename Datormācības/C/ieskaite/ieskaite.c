/*
 *
 * Autors: Ansis Skadins
 * Apliecības numurs: 151RDB399
 * Grupa: REBC02
 *
 */

#include <stdio.h> 
#include <fcntl.h>	/* O_CREAT, O_TRUNC */
#include <unistd.h>	/* open, write */
#include <errno.h>	/* errno */
#include <string.h>	/* strerror */

struct student {
	int group;
	int kurss;
	char name[20];
};

int viens();
int divi();
int tris();

int main (int argc, char **argv)
{
	if (argc == 2) {
		if(!strcmp(*(argv+1), "-w")) {
			printf("Writing!\n");
			viens();
		}
		if(!strcmp(*(argv+1), "-r")) {
			printf("Reading!\n");
			divi();
		}
		if(!strcmp(*(argv+1), "-a")) {
			printf("Appending!\n");
			tris();
		}
		
	} else {
		printf("Izvēlies funkciju:\nwrite\t-w\nread\t-r\n");
	}
	return 0;
}


int viens()
{
	int fd;
	int err = 0;
	char *file = "data.bin";	/* pointer to a read only string */
	struct student student1= {
		.group = 2,
		.kurss = 2,
		.name = "Ansis"
	};

	fd = open(file, O_CREAT | O_TRUNC | O_RDWR, 0000777);
	if (fd == -1) {
		printf("File open error: %i (%s)\n", errno, strerror(errno));
		return fd;
	}

	err = write(fd, &student1, sizeof(student1));
	if (err == -1) {
		printf("File write error: %i (%s)\n", errno, strerror(errno));
		close(fd);
		return err;
	}

	printf("Student data saved to %s\n", file);
	close(fd);
}

int divi()
{
	int fd;
	int err = 0;
	int bytes = 1;
	int count = 0;
	char *file = "data.bin";
	struct student student1;

	fd = open(file, O_RDWR, 0000777);
	if (fd == -1) {
		printf("File open error: %i (%s)\n", errno, strerror(errno));
		return fd;
	}

	printf("group\tkurss\tname\n");
	while (bytes > 0) {
		bytes = read(fd, &student1, sizeof(struct student)); 
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
		printf("%i\t%i\t%s\n", student1.group, student1.kurss, student1.name);
		count++;
	}
	printf("Read %i records from %s\n", count, file);
	close(fd);
}


int tris()
{
		int fd;
		int err = 0;
		char *file = "data.bin";
		struct student student2 = {0};

		printf("Izvēlies studenta datus, kurus tu vēlies ievadīt vārds, kurs, grupa\n");
		scanf("%s",&student2.name);
		scanf("%i",&student2.kurss);
		scanf("%i",&student2.group);


		fd = open(file, O_APPEND | O_RDWR, 0000777);
		if (fd == -1) {
			printf("File open error: %i (%s)\n", errno, strerror(errno));
			return fd;
		}
					
		err = write(fd, &student2, sizeof(struct student));
		if (err == -1) {
 			printf("File write error: %i\n", err);
			close(fd);
			return err;
		}
									
 		printf("%lu bytes saved to %s\n", sizeof(struct student), file);
		close(fd);
									
		return 0;
}
