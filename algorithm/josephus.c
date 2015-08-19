# include <stdio.h>
int main()
{
	int m, n, i, s;

	while (~scanf("%d%d", &m, &n))
		{
			s = 0;          // F1 = 0;
			for (i = 2; i <= n; ++i)
				s = (s + m) % i;
			printf("%d\n", s+1);       // 原问题的编号是从1开始的
			    
		}

	return 0;
	
}
