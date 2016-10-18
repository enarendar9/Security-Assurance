#include <unistd.h>
#include <stdlib.h>

int execve(const char *filename, char *const argv [], char *const envp[]);

int main()

{

	char *args[2];
	args[0] = "/bin/sh";
	args[1]= NULL;
	execve(args[0], args, NULL);
	
	return 0;

}
