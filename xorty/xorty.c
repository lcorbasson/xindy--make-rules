/* xorty.c: Convert a text file (sort keys, one on each line) 
 * on standard input to a raw input file for xindy on standard output
 * 
 * Uses getline() which is a GNU extension.
 * 
 * 2001-03-31 Thomas Henlich <thenlich@web.de>
 * 
 */

#include <stdio.h>
#include <unistd.h>

int main(int argc, char* argv[])
{
  ssize_t s = 0, i, n;
  char *linebuf = NULL;
  
  while ((n = getline(&linebuf, &s, stdin)) != -1) {
    fputs("(indexentry :key (\"", stdout);
    for (i = 0; i < n-1; i++) {
      switch (linebuf[i]) {
       case '\\' :
	putchar('\\');
	break;
       case '"' :
	putchar('\\');
	break;
      }
      putchar(linebuf[i]);
    }
    puts("\") :attr \"xorty\" :xref (\"\"))");
  }
  return 0;
}
