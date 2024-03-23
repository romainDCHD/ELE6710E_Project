CXX = g++
CXXFLAGS = -Wall -std=c++11
LDFLAGS = 
EXEC = main
SOURCES = $(wildcard src/*.cpp) $(wildcard src/dataset/*.cpp) $(wildcard src/misc/*.cpp) $(wildcard src/neural/*.cpp) $(wildcard src/optimizer/*.cpp)
OBJECTS = $(SOURCES:.cpp=.o)

all: $(EXEC)

$(EXEC): $(OBJECTS)
	$(CXX) $(OBJECTS) -o $(EXEC) $(LDFLAGS)

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	rm -f $(EXEC) $(OBJECTS)

.PHONY: all clean
