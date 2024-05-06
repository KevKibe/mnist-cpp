CC=g++
INCLUDE_DIR := $(ROOT_DIR)/include
SRC := $(ROOT_DIR)/src
CFLAGS := -std=c++11 -g 
LIB_DATA := libdata.so

all : $(LIB_DATA)

$(LIB_DATA) : libdir objdir obj/data_handler.o obj/data.o
	$(CC) $(CFLAGS) -o $(ROOT_DIR)/lib/$(LIB_DATA) obj/*.o
	rm -r $(ROOT_DIR)/obj

libdir: 
	mkdir -p $(ROOT_DIR)/lib

objdir: 
	mkdir -p $(ROOT_DIR)/obj

obj/data_handler.o : $(SRC)/data_handler.cc
	$(CC) -fPIC $(CFLAGS) -o obj/data_handler.o -I$(INCLUDE_DIR) -c $(SRC)/data_handler.cc

obj/data.o : $(SRC)/data.cc
	$(CC) -fPIC $(CFLAGS) -o obj/data.o -I$(INCLUDE_DIR) -c $(SRC)/data.cc


clean: 
	rm -r $(ROOT_DIR)/lib
	rm -r $(ROOT_DIR)/obj