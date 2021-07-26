#include <mpi.h>
#include <stdio.h>

#define EXTRACT_BIT(n, i) ((n&(1<<i))?1:0)

void check_circuit (int, int);
void print_circuit (int *, const int *);

void check_circuit (int proc_id, int input_dec)
// input are in the format of binary numbers, such as 0b1000100010001000
{
  int v[16];
  int i;
  for (i = 0; i < 16; i++)
    v[i] = EXTRACT_BIT(input_dec, i);
  if ((v[0] || v[1]) && (!v[1] || !v[3]) && (v[2] || v[3])
      && (!v[3] || !v[4]) && (v[4] || !v[5])
      && (v[5] || !v[6]) && (v[5] || v[6])
      && (v[6] || !v[15]) && (v[7] || !v[8])
      && (!v[7] || !v[13]) && (v[8] || v[9])
      && (v[8] || !v[9]) && (!v[9] || !v[10])
      && (v[9] || v[11]) && (v[10] || v[11])
      && (v[12] || v[13]) && (v[13] || !v[14])
      && (v[14] || v[15]))
    {
      print_circuit (v, &proc_id);
    }
}

void print_circuit (int *v, const int *proc_id)
{
  printf ("%d) ", *proc_id);
  for (int i = 0; i < 16; i++)
    printf ("%d", v[i]);
  printf ("\n");
  fflush (stdout);
}

int main (int argc, char *argv[])
{
  int i;
  int proc_id;
  int number_of_proc;
  double time_elapsed;

  MPI_Init (&argc, &argv);
  MPI_Comm_rank (MPI_COMM_WORLD, &proc_id);
  MPI_Comm_size (MPI_COMM_WORLD, &number_of_proc);

  time_elapsed = -MPI_Wtime();

  for (i = proc_id; i < 0b1111111111111111; i += number_of_proc)
    check_circuit (proc_id, i);
  time_elapsed += MPI_Wtime();
//  MPI_Barrier (MPI_COMM_WORLD);
  printf ("Process %d is done, time elapsed %f:\n", proc_id, time_elapsed);
  fflush (stdout);
  MPI_Finalize ();
  return 0;
}