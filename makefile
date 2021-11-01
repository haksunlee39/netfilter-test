LDLIBS=-lnetfilter_queue
	
all: netfilter-test

netfilter-test: main.o
	g++ -o netfilter-test main.o $(LDLIBS)

main.o: net_filter.h main.c

clean:
	rm -f netfilter-test
	rm -f *.o
