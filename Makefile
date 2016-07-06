log.log: src.src ./exe.exe
	./exe.exe < $< > $@ && tail $(TAIL) $@

C = cpp.cpp
H = hpp.hpp
L =

WALL = -Wall -Wextra -Werror
CXXFLAGS += -std=gnu++11 $(WALL)
./exe.exe: $(C) $(H) Makefile
	$(CXX) $(CXXFLAGS) -o $@ $(C) $(L)
