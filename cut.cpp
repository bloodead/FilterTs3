#include <stdio.h>



int	cutstring(char* string, int nb)
{
	int	count;

	count = 0;
		printf("%d", nb);
	
	while (count != nb)
	{	
		printf("%c", string[count]);
		count++;
		if (string[count] == '|')
		{
			printf("%c", '\n');
			count++;
		}
	}

	return 0;

}
