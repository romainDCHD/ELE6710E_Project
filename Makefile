CXX = g++
CXXFLAGS = -Wall -std=c++11 -Iinclude
LDFLAGS = -lpthread
EXEC = build/bin/neuralnetwork
SOURCES = $(wildcard src/*.cpp)
OBJECTS = $(addprefix build/, $(notdir $(SOURCES:.cpp=.o)))
DIRS = build build/bin

all: dirs $(EXEC)

dirs:
	mkdir -p $(DIRS)

$(EXEC): $(OBJECTS)
	$(CXX) $(OBJECTS) -o $(EXEC) $(LDFLAGS)

build/%.o: src/%.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	rm -f $(EXEC) $(OBJECTS)
	rm -rf $(DIRS)

.PHONY: all clean dirs