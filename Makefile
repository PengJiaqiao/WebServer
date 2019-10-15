main : echoserv.o helper.o
	cc -o main echoserv.o helper.o

echoserv.o : echoserv.c helper.h
	cc -c echoserv.c
helper.o : helper.c helper.h
	cc -c helper.c

clean :
	rm main echoserv.o helper.o