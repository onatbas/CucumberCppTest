		Onats-MacBook-Pro:cucumberTest onatbas$ mkdir bin
		Onats-MacBook-Pro:cucumberTest onatbas$ cd bin/
		Onats-MacBook-Pro:bin onatbas$ cmake ../ -DCUCUMBER_ROOT=~/workspace/tools/cucumber/cucumber-cpp/
		-- The C compiler identification is AppleClang 7.0.2.7000181
		-- The CXX compiler identification is AppleClang 7.0.2.7000181
		-- Check for working C compiler: /Library/Developer/CommandLineTools/usr/bin/cc
		-- Check for working C compiler: /Library/Developer/CommandLineTools/usr/bin/cc -- works
		-- Detecting C compiler ABI info
		-- Detecting C compiler ABI info - done
		-- Detecting C compile features
		-- Detecting C compile features - done
		-- Check for working CXX compiler: /Library/Developer/CommandLineTools/usr/bin/c++
		-- Check for working CXX compiler: /Library/Developer/CommandLineTools/usr/bin/c++ -- works
		-- Detecting CXX compiler ABI info
		-- Detecting CXX compiler ABI info - done
		-- Detecting CXX compile features
		-- Detecting CXX compile features - done
		-- Boost version: 1.63.0
		-- Found the following Boost libraries:
		--   thread
		--   regex
		--   filesystem
		--   system
		--   unit_test_framework
		-- Found GTest: /usr/local/lib/libgtest.a  
		GTEST_BOTH_LIBRARIES : 
		-- Found GMock: /usr/local/lib/libgmock.a  
		Cucumber binaries: /Users/onatbas/workspace/tools/cucumber/cucumber-cpp/build/src/libcucumber-cpp.a
		-- Looking for include file pthread.h
		-- Looking for include file pthread.h - found
		-- Looking for pthread_create
		-- Looking for pthread_create - found
		-- Found Threads: TRUE  
		-- Configuring done
		-- Generating done
		-- Build files have been written to: /Users/onatbas/Desktop/cucumberTest/bin
		Onats-MacBook-Pro:bin onatbas$ cmake --build . --config Release
		Scanning dependencies of target cucumberTest
		[ 50%] Building CXX object CMakeFiles/cucumberTest.dir/src/CucumberApp.cxx.o
		Linking CXX static library libcucumberTest.a
		[ 50%] Built target cucumberTest
		Scanning dependencies of target AdditionTest_TESTTARGET
		[100%] Building CXX object tests/CMakeFiles/AdditionTest_TESTTARGET.dir/__/features/step_definitions/AdditionTest.cxx.o
		In file included from /Users/onatbas/Desktop/cucumberTest/features/step_definitions/AdditionTest.cxx:2:
		/Users/onatbas/workspace/tools/cucumber/cucumber-cpp/include/cucumber-cpp/defs.hpp:2:6: warning: "Use of defs.hpp is deprecated, please
		      use either autodetect.hpp or generic.hpp" [-W#warnings]
		    #warning "Use of defs.hpp is deprecated, please use either autodetect.hpp or generic.hpp"
		     ^
		1 warning generated.
		Linking CXX executable AdditionTest_TESTTARGET
		[100%] Built target AdditionTest_TESTTARGET
		Onats-MacBook-Pro:bin onatbas$ ./tests/AdditionTest_TESTTARGET 
		Running main() from gtest_main.cc
		[==========] Running 0 tests from 0 test cases.
		[==========] 0 tests from 0 test cases ran. (0 ms total)
		[  PASSED  ] 0 tests.
		Onats-MacBook-Pro:bin onatbas$ 
