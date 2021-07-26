#include<stdio.h>
#include<stdlib.h>
#include<math.h>
#include<string.h>

int main (int argc, char *argv[])
{
  // declare a char array to hold the file name
  char fn[255];
  // declare a file pointer
  FILE *infileptr;
  int i, j, *m = &i, *n = &j;
  int num;
  // The name of the external file is the 1st commend line argument
  strcpy (fn, argv[1]);
  // Now that the filename has been obtained, try to open the file
  infileptr = fopen (fn, "w");
  // Exit if the file was not successfully opened or created
  if (infileptr == NULL)
    {
      *m = 0;
      printf ("m is 0, aborting\n");
      exit (1);
    }
  // Will now read the data to create the matrix in the format expected
  printf ("Opening %s successful, writing ints\n", fn);
  printf ("Reading number of ints as rows and columns\n");
  // i is the number of rows, j is the number of columns
  scanf ("%d %d", &i, &j);
  // Use the binary write() to write this information to the external file
  fwrite (m, sizeof (int), 1, infileptr);
  fwrite (n, sizeof (int), 1, infileptr);
  // Calculate the total number of matrix elements that are needed
  num = i * j;
  printf ("Read %d integers\n", num);
  // This loop reads the values from standard input, could randomly assign the values
  for (j = 0; j < num; j++)
    {
      scanf ("%d", &i);
      fwrite (m, sizeof (int), 1, infileptr);
      printf ("%d \n", i);
    }
  printf ("Finished writing\n");
  exit (0);
}


