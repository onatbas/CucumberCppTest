set(Boost_USE_STATIC_RUNTIME OFF)

find_package(Boost REQUIRED COMPONENTS
        thread
        regex
        system
        date_time
        filesystem
        chrono
        program_options
        unit_test_framework)

if(Boost_FOUND)
 include_directories(${Boost_INCLUDE_DIRS})
endif()

# link against ${Boost_LIBRARIES}
