CC = gcc
CFLAGS  = -g -Wall 
 
default: test

test: test_assign1_1.o storage_mgr.o dberror.o 
	$(CC) $(CFLAGS) -o test test_assign1_1.o storage_mgr.o dberror.o -lm


test_assign1_1.o: test_assign1_1.c dberror.h storage_mgr.h test_helper.h
	$(CC) $(CFLAGS) -c test_assign1_1.c -lm

storage_mgr.o: storage_mgr.c storage_mgr.h 
	$(CC) $(CFLAGS) -c storage_mgr.c -lm

dberror.o: dberror.c dberror.h 
	$(CC) $(CFLAGS) -c dberror.c

clean: 
	$(RM) test *.o *~

run_test:
	./test