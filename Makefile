LIB = ../../../../encs/pkg/cplex-12.7.1/root/cplex
CXX=gcc -O2
CPLXST=-DIL_STD  -L$(LIB)/lib/x86-64_linux/static_pic -lcplex -lm -lpthread 
LIB2=-I$(LIB)/include/
OBJ= tuneset.o
NAME=tuner

$(NAME) : $(OBJ)
	$(CXX) -I$(LIB)/include/ilcplex $(OBJ) -o $(NAME) $(CPLXST)

tuneset.o: tuneset.c 
	$(CXX) -c tuneset.c $< $(LIB2)

clean :
	rm $(NAME) $(OBJ)

