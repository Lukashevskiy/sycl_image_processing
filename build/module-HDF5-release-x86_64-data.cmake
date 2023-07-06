########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

list(APPEND hdf5_COMPONENT_NAMES hdf5::hdf5 hdf5::hdf5_cpp hdf5::hdf5_hl hdf5::hdf5_hl_cpp)
list(REMOVE_DUPLICATES hdf5_COMPONENT_NAMES)
list(APPEND hdf5_FIND_DEPENDENCY_NAMES ZLIB)
list(REMOVE_DUPLICATES hdf5_FIND_DEPENDENCY_NAMES)
set(ZLIB_FIND_MODE "MODULE")

########### VARIABLES #######################################################################
#############################################################################################
set(hdf5_PACKAGE_FOLDER_RELEASE "/home/dmitriyl/.conan2/p/b/hdf5a2b085f7c2745/p")
set(hdf5_BUILD_MODULES_PATHS_RELEASE "${hdf5_PACKAGE_FOLDER_RELEASE}/lib/cmake/conan-official-hdf5-variables.cmake")


set(hdf5_INCLUDE_DIRS_RELEASE "${hdf5_PACKAGE_FOLDER_RELEASE}/include"
			"${hdf5_PACKAGE_FOLDER_RELEASE}/include/hdf5")
set(hdf5_RES_DIRS_RELEASE )
set(hdf5_DEFINITIONS_RELEASE )
set(hdf5_SHARED_LINK_FLAGS_RELEASE )
set(hdf5_EXE_LINK_FLAGS_RELEASE )
set(hdf5_OBJECTS_RELEASE )
set(hdf5_COMPILE_DEFINITIONS_RELEASE )
set(hdf5_COMPILE_OPTIONS_C_RELEASE )
set(hdf5_COMPILE_OPTIONS_CXX_RELEASE )
set(hdf5_LIB_DIRS_RELEASE "${hdf5_PACKAGE_FOLDER_RELEASE}/lib")
set(hdf5_BIN_DIRS_RELEASE )
set(hdf5_LIBRARY_TYPE_RELEASE STATIC)
set(hdf5_IS_HOST_WINDOWS_RELEASE 0)
set(hdf5_LIBS_RELEASE hdf5_hl_cpp hdf5_hl hdf5_cpp hdf5)
set(hdf5_SYSTEM_LIBS_RELEASE dl m)
set(hdf5_FRAMEWORK_DIRS_RELEASE )
set(hdf5_FRAMEWORKS_RELEASE )
set(hdf5_BUILD_DIRS_RELEASE )
set(hdf5_NO_SONAME_MODE_RELEASE FALSE)


# COMPOUND VARIABLES
set(hdf5_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${hdf5_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${hdf5_COMPILE_OPTIONS_C_RELEASE}>")
set(hdf5_LINKER_FLAGS_RELEASE
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${hdf5_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${hdf5_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${hdf5_EXE_LINK_FLAGS_RELEASE}>")


set(hdf5_COMPONENTS_RELEASE hdf5::hdf5 hdf5::hdf5_cpp hdf5::hdf5_hl hdf5::hdf5_hl_cpp)
########### COMPONENT hdf5::hdf5_hl_cpp VARIABLES ############################################

set(hdf5_hdf5_hdf5_hl_cpp_INCLUDE_DIRS_RELEASE "${hdf5_PACKAGE_FOLDER_RELEASE}/include"
			"${hdf5_PACKAGE_FOLDER_RELEASE}/include/hdf5")
set(hdf5_hdf5_hdf5_hl_cpp_LIB_DIRS_RELEASE "${hdf5_PACKAGE_FOLDER_RELEASE}/lib")
set(hdf5_hdf5_hdf5_hl_cpp_BIN_DIRS_RELEASE )
set(hdf5_hdf5_hdf5_hl_cpp_LIBRARY_TYPE_RELEASE STATIC)
set(hdf5_hdf5_hdf5_hl_cpp_IS_HOST_WINDOWS_RELEASE 0)
set(hdf5_hdf5_hdf5_hl_cpp_RES_DIRS_RELEASE )
set(hdf5_hdf5_hdf5_hl_cpp_DEFINITIONS_RELEASE )
set(hdf5_hdf5_hdf5_hl_cpp_OBJECTS_RELEASE )
set(hdf5_hdf5_hdf5_hl_cpp_COMPILE_DEFINITIONS_RELEASE )
set(hdf5_hdf5_hdf5_hl_cpp_COMPILE_OPTIONS_C_RELEASE "")
set(hdf5_hdf5_hdf5_hl_cpp_COMPILE_OPTIONS_CXX_RELEASE "")
set(hdf5_hdf5_hdf5_hl_cpp_LIBS_RELEASE hdf5_hl_cpp)
set(hdf5_hdf5_hdf5_hl_cpp_SYSTEM_LIBS_RELEASE )
set(hdf5_hdf5_hdf5_hl_cpp_FRAMEWORK_DIRS_RELEASE )
set(hdf5_hdf5_hdf5_hl_cpp_FRAMEWORKS_RELEASE )
set(hdf5_hdf5_hdf5_hl_cpp_DEPENDENCIES_RELEASE hdf5::hdf5 hdf5::hdf5_cpp hdf5::hdf5_hl)
set(hdf5_hdf5_hdf5_hl_cpp_SHARED_LINK_FLAGS_RELEASE )
set(hdf5_hdf5_hdf5_hl_cpp_EXE_LINK_FLAGS_RELEASE )
set(hdf5_hdf5_hdf5_hl_cpp_NO_SONAME_MODE_RELEASE FALSE)

# COMPOUND VARIABLES
set(hdf5_hdf5_hdf5_hl_cpp_LINKER_FLAGS_RELEASE
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${hdf5_hdf5_hdf5_hl_cpp_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${hdf5_hdf5_hdf5_hl_cpp_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${hdf5_hdf5_hdf5_hl_cpp_EXE_LINK_FLAGS_RELEASE}>
)
set(hdf5_hdf5_hdf5_hl_cpp_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${hdf5_hdf5_hdf5_hl_cpp_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${hdf5_hdf5_hdf5_hl_cpp_COMPILE_OPTIONS_C_RELEASE}>")
########### COMPONENT hdf5::hdf5_hl VARIABLES ############################################

set(hdf5_hdf5_hdf5_hl_INCLUDE_DIRS_RELEASE "${hdf5_PACKAGE_FOLDER_RELEASE}/include"
			"${hdf5_PACKAGE_FOLDER_RELEASE}/include/hdf5")
set(hdf5_hdf5_hdf5_hl_LIB_DIRS_RELEASE "${hdf5_PACKAGE_FOLDER_RELEASE}/lib")
set(hdf5_hdf5_hdf5_hl_BIN_DIRS_RELEASE )
set(hdf5_hdf5_hdf5_hl_LIBRARY_TYPE_RELEASE STATIC)
set(hdf5_hdf5_hdf5_hl_IS_HOST_WINDOWS_RELEASE 0)
set(hdf5_hdf5_hdf5_hl_RES_DIRS_RELEASE )
set(hdf5_hdf5_hdf5_hl_DEFINITIONS_RELEASE )
set(hdf5_hdf5_hdf5_hl_OBJECTS_RELEASE )
set(hdf5_hdf5_hdf5_hl_COMPILE_DEFINITIONS_RELEASE )
set(hdf5_hdf5_hdf5_hl_COMPILE_OPTIONS_C_RELEASE "")
set(hdf5_hdf5_hdf5_hl_COMPILE_OPTIONS_CXX_RELEASE "")
set(hdf5_hdf5_hdf5_hl_LIBS_RELEASE hdf5_hl)
set(hdf5_hdf5_hdf5_hl_SYSTEM_LIBS_RELEASE )
set(hdf5_hdf5_hdf5_hl_FRAMEWORK_DIRS_RELEASE )
set(hdf5_hdf5_hdf5_hl_FRAMEWORKS_RELEASE )
set(hdf5_hdf5_hdf5_hl_DEPENDENCIES_RELEASE hdf5::hdf5)
set(hdf5_hdf5_hdf5_hl_SHARED_LINK_FLAGS_RELEASE )
set(hdf5_hdf5_hdf5_hl_EXE_LINK_FLAGS_RELEASE )
set(hdf5_hdf5_hdf5_hl_NO_SONAME_MODE_RELEASE FALSE)

# COMPOUND VARIABLES
set(hdf5_hdf5_hdf5_hl_LINKER_FLAGS_RELEASE
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${hdf5_hdf5_hdf5_hl_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${hdf5_hdf5_hdf5_hl_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${hdf5_hdf5_hdf5_hl_EXE_LINK_FLAGS_RELEASE}>
)
set(hdf5_hdf5_hdf5_hl_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${hdf5_hdf5_hdf5_hl_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${hdf5_hdf5_hdf5_hl_COMPILE_OPTIONS_C_RELEASE}>")
########### COMPONENT hdf5::hdf5_cpp VARIABLES ############################################

set(hdf5_hdf5_hdf5_cpp_INCLUDE_DIRS_RELEASE "${hdf5_PACKAGE_FOLDER_RELEASE}/include"
			"${hdf5_PACKAGE_FOLDER_RELEASE}/include/hdf5")
set(hdf5_hdf5_hdf5_cpp_LIB_DIRS_RELEASE "${hdf5_PACKAGE_FOLDER_RELEASE}/lib")
set(hdf5_hdf5_hdf5_cpp_BIN_DIRS_RELEASE )
set(hdf5_hdf5_hdf5_cpp_LIBRARY_TYPE_RELEASE STATIC)
set(hdf5_hdf5_hdf5_cpp_IS_HOST_WINDOWS_RELEASE 0)
set(hdf5_hdf5_hdf5_cpp_RES_DIRS_RELEASE )
set(hdf5_hdf5_hdf5_cpp_DEFINITIONS_RELEASE )
set(hdf5_hdf5_hdf5_cpp_OBJECTS_RELEASE )
set(hdf5_hdf5_hdf5_cpp_COMPILE_DEFINITIONS_RELEASE )
set(hdf5_hdf5_hdf5_cpp_COMPILE_OPTIONS_C_RELEASE "")
set(hdf5_hdf5_hdf5_cpp_COMPILE_OPTIONS_CXX_RELEASE "")
set(hdf5_hdf5_hdf5_cpp_LIBS_RELEASE hdf5_cpp)
set(hdf5_hdf5_hdf5_cpp_SYSTEM_LIBS_RELEASE )
set(hdf5_hdf5_hdf5_cpp_FRAMEWORK_DIRS_RELEASE )
set(hdf5_hdf5_hdf5_cpp_FRAMEWORKS_RELEASE )
set(hdf5_hdf5_hdf5_cpp_DEPENDENCIES_RELEASE hdf5::hdf5)
set(hdf5_hdf5_hdf5_cpp_SHARED_LINK_FLAGS_RELEASE )
set(hdf5_hdf5_hdf5_cpp_EXE_LINK_FLAGS_RELEASE )
set(hdf5_hdf5_hdf5_cpp_NO_SONAME_MODE_RELEASE FALSE)

# COMPOUND VARIABLES
set(hdf5_hdf5_hdf5_cpp_LINKER_FLAGS_RELEASE
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${hdf5_hdf5_hdf5_cpp_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${hdf5_hdf5_hdf5_cpp_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${hdf5_hdf5_hdf5_cpp_EXE_LINK_FLAGS_RELEASE}>
)
set(hdf5_hdf5_hdf5_cpp_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${hdf5_hdf5_hdf5_cpp_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${hdf5_hdf5_hdf5_cpp_COMPILE_OPTIONS_C_RELEASE}>")
########### COMPONENT hdf5::hdf5 VARIABLES ############################################

set(hdf5_hdf5_hdf5_INCLUDE_DIRS_RELEASE "${hdf5_PACKAGE_FOLDER_RELEASE}/include"
			"${hdf5_PACKAGE_FOLDER_RELEASE}/include/hdf5"
			"${hdf5_PACKAGE_FOLDER_RELEASE}/include/hdf5")
set(hdf5_hdf5_hdf5_LIB_DIRS_RELEASE "${hdf5_PACKAGE_FOLDER_RELEASE}/lib")
set(hdf5_hdf5_hdf5_BIN_DIRS_RELEASE )
set(hdf5_hdf5_hdf5_LIBRARY_TYPE_RELEASE STATIC)
set(hdf5_hdf5_hdf5_IS_HOST_WINDOWS_RELEASE 0)
set(hdf5_hdf5_hdf5_RES_DIRS_RELEASE )
set(hdf5_hdf5_hdf5_DEFINITIONS_RELEASE )
set(hdf5_hdf5_hdf5_OBJECTS_RELEASE )
set(hdf5_hdf5_hdf5_COMPILE_DEFINITIONS_RELEASE )
set(hdf5_hdf5_hdf5_COMPILE_OPTIONS_C_RELEASE "")
set(hdf5_hdf5_hdf5_COMPILE_OPTIONS_CXX_RELEASE "")
set(hdf5_hdf5_hdf5_LIBS_RELEASE hdf5)
set(hdf5_hdf5_hdf5_SYSTEM_LIBS_RELEASE dl m)
set(hdf5_hdf5_hdf5_FRAMEWORK_DIRS_RELEASE )
set(hdf5_hdf5_hdf5_FRAMEWORKS_RELEASE )
set(hdf5_hdf5_hdf5_DEPENDENCIES_RELEASE ZLIB::ZLIB)
set(hdf5_hdf5_hdf5_SHARED_LINK_FLAGS_RELEASE )
set(hdf5_hdf5_hdf5_EXE_LINK_FLAGS_RELEASE )
set(hdf5_hdf5_hdf5_NO_SONAME_MODE_RELEASE FALSE)

# COMPOUND VARIABLES
set(hdf5_hdf5_hdf5_LINKER_FLAGS_RELEASE
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${hdf5_hdf5_hdf5_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${hdf5_hdf5_hdf5_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${hdf5_hdf5_hdf5_EXE_LINK_FLAGS_RELEASE}>
)
set(hdf5_hdf5_hdf5_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${hdf5_hdf5_hdf5_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${hdf5_hdf5_hdf5_COMPILE_OPTIONS_C_RELEASE}>")