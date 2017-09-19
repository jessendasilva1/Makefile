#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <add.h>

int main(int argc, char const *argv[])
{
	int answer = 0;
	//this is a comment in c89
	/*this is a comment in c99 */

	printf("Main printing stuff\n");

	answer = add(2,6);

	printf("Answer is: %d\n", answer);

	return 0;
}