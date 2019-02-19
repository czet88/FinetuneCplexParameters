****************************************
Note: The Makefile contains the local path of CPLEX, you need to update 
it with you local path before compiling.

The code generates an executable named "tuner" that can be used to make 
CPLEX automatically finetune its parameters for your model by solving 
some instances.

To use the code, type in the command line the following:

./tuner [options] file1 file2 ... filen

where 
       each filei is the name of a file, with .mps, .lp, or .sav extension (These can be obtained by CPLEX's CPXwriteprob(env,lp,probname,"lp")
       [options] are to tell CPLEX what metric to use in the finetuning.
	   -a for average measure; 
	   -m for minmax measure;
       -f <file> where file is a fixed parameter file;
       -o <file> where file is the tuned parameter file;
	   
	   
For example:

./tuner -o bestparam -f param_file c38.dat.lp

Will finetune the c38 instance having fixed the parameters in param_file, and will print out the best parameters in bestparam.