all: clean test

appTests: test/tests.cpp implementation/student.hpp
	g++ -fsanitize=address --std=c++17 test/tests.cpp -o build/appTests

test: appTests
	# executes all tests
	./build/appTests

clean:
	rm -f build/appTests
	rm -f build/exercise
run:
	g++ exercise.cpp -o build/exercise
	clear
	./build/exercise
