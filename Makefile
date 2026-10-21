#Makefile - C
CFLAGS=-Wall  -g -02
EXE=mandelbrot
EXEC=mandelbrot_threads
NOM=Vinchon_Projet_Mandelbrot
SRC=Vinchon_Projet_Mandelbrot_threads

.PHONY : clear

#$(EXE) : $(NOM).c rainbow.h
#	gcc -o $@ $(NOM).c -lm
#	./$(EXE)
#	$ convert -size 3840x2160 -depth 8 $(EXE).rgba $(EXE).jpg

$(EXEC) : $(SRC).c
	gcc -o $@ $(SRC).c -lm
	./$(EXEC)
clear :
	rm exe $(NOM).o *~
