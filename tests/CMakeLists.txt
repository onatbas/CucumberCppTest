cmake_minimum_required(VERSION 3.1)

find_package(Threads)
set(CUCUMBERTEST_TEST_DEPENDENCIES
		${CUCUMBER_BINARIES}
		${GTEST_BOTH_LIBRARIES}
		cucumberTest
		${CMAKE_THREAD_LIBS_INIT}
		${GMOCK_BOTH_LIBRARIES}
		${Boost_LIBRARIES}
)

macro(ADD_NEW_CUCUMBER_TEST TEST_SOURCE FOLDER_NAME)
	set (TARGET_NAME ${TEST_SOURCE}_TESTTARGET)
	add_executable(${TARGET_NAME} ${CMAKE_SOURCE_DIR}/features/step_definitions/${TEST_SOURCE})
	target_link_libraries(${TARGET_NAME} ${CUCUMBERTEST_TEST_DEPENDENCIES})
	add_test(NAME ${TEST_SOURCE} COMMAND ${TARGET_NAME})
	set_property(TARGET ${TARGET_NAME} PROPERTY FOLDER ${FOLDER_NAME})
endmacro()

ADD_NEW_CUCUMBER_TEST(AdditionTest  "cucumberTest_tests")
