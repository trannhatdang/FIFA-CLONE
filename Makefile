MAIN:= main.cpp
SRC:= $(wildcard src/*.cpp)
CXX:= g++
CFLAGS:= -lSDL3 -Iinclude


all: $(SRC) $(MAIN)
	$(CXX) $(MAIN) $(SRC) $(CFLAGS)
