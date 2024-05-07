CC=g++
SRC := $(ROOT_DIR)/KNN/src
CFLAGS := -std=c++11 -DEUCLID
INCLUDE_DIR := $(PWD)/include/*

all : main

main : $(SRC)/knn.cc
	$(CC) $(CFLAGS) $(SRC)/knn.cc -o main -L$(ROOT_DIR)/lib/ -I$(INCLUDE_DIR) \
	-I$(ROOT_DIR)/include -ldata 

clean: 
	rm main