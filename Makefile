main:main.o Mino.o genMino.o MinoI.o MinoS.o MinoZ.o MinoL.o MinoJ.o
	g++ -o lab7 main.o Mino.o genMino.o MinoI.o MinoS.o MinoZ.o MinoL.o MinoJ.o

Mino.o:Mino.cpp Mino.h
	g++ -c Mino.cpp

main.o:main.cpp genMino.h
	g++ -c main.cpp

genMino.o:genMino.cpp genMino.h Mino.h  MinoI.h MinoS.h MinoZ.h MinoL.h MinoJ.h
	g++ -c genMino.cpp

MinoI.o:MinoI.cpp MinoI.h Mino.h
	g++ -c MinoI.cpp

MinoS.o:MinoS.cpp MinoS.h Mino.h
	g++ -c MinoS.cpp

MinoZ.o:MinoZ.cpp MinoZ.h Mino.h
	g++ -c MinoZ.cpp

MinoL.o:MinoL.cpp MinoL.h Mino.h
	g++ -c MinoL.cpp

MinoJ.o:MinoJ.cpp MinoJ.h Mino.h
	g++ -c MinoJ.cpp

clean:
	rm *.o lab7
