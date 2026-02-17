MAIN:= main.cpp
SRC:= $(wildcard src/*.cpp src/engine/*.cpp)
CXX:= g++
CFLAGS:= -lSDL3 -Iinclude
OUTPUT:= main.exe

all: $(SRC) $(MAIN)
	$(CXX) $(MAIN) $(SRC) $(CFLAGS) -o $(OUTPUT)

clean:
	rm -f $(OUTPUT)
