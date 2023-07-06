# Avoid multiple calls to find_package to append duplicated properties to the targets
include_guard()########### VARIABLES #######################################################################
#############################################################################################
set(hdf5_FRAMEWORKS_FOUND_RELEASE "") # Will be filled later
conan_find_apple_frameworks(hdf5_FRAMEWORKS_FOUND_RELEASE "${hdf5_FRAMEWORKS_RELEASE}" "${hdf5_FRAMEWORK_DIRS_RELEASE}")

set(hdf5_LIBRARIES_TARGETS "") # Will be filled later


######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
if(NOT TARGET hdf5_DEPS_TARGET)
    add_library(hdf5_DEPS_TARGET INTERFACE IMPORTED)
endif()

set_property(TARGET hdf5_DEPS_TARGET
             PROPERTY INTERFACE_LINK_LIBRARIES
             $<$<CONFIG:Release>:${hdf5_FRAMEWORKS_FOUND_RELEASE}>
             $<$<CONFIG:Release>:${hdf5_SYSTEM_LIBS_RELEASE}>
             $<$<CONFIG:Release>:ZLIB::ZLIB;hdf5::hdf5;hdf5::hdf5_cpp;hdf5::hdf5_hl>
             APPEND)

####### Find the libraries declared in cpp_info.libs, create an IMPORTED target for each one and link the
####### hdf5_DEPS_TARGET to all of them
conan_package_library_targets("${hdf5_LIBS_RELEASE}"    # libraries
                              "${hdf5_LIB_DIRS_RELEASE}" # package_libdir
                              "${hdf5_BIN_DIRS_RELEASE}" # package_bindir
                              "${hdf5_LIBRARY_TYPE_RELEASE}"
                              "${hdf5_IS_HOST_WINDOWS_RELEASE}"
                              hdf5_DEPS_TARGET
                              hdf5_LIBRARIES_TARGETS  # out_libraries_targets
                              "_RELEASE"
                              "hdf5"    # package_name
                              "${hdf5_NO_SONAME_MODE_RELEASE}")  # soname

# FIXME: What is the result of this for multi-config? All configs adding themselves to path?
set(CMAKE_MODULE_PATH ${hdf5_BUILD_DIRS_RELEASE} ${CMAKE_MODULE_PATH})

########## COMPONENTS TARGET PROPERTIES Release ########################################

    ########## COMPONENT hdf5::hdf5_hl_cpp #############

        set(hdf5_hdf5_hdf5_hl_cpp_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(hdf5_hdf5_hdf5_hl_cpp_FRAMEWORKS_FOUND_RELEASE "${hdf5_hdf5_hdf5_hl_cpp_FRAMEWORKS_RELEASE}" "${hdf5_hdf5_hdf5_hl_cpp_FRAMEWORK_DIRS_RELEASE}")

        set(hdf5_hdf5_hdf5_hl_cpp_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET hdf5_hdf5_hdf5_hl_cpp_DEPS_TARGET)
            add_library(hdf5_hdf5_hdf5_hl_cpp_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET hdf5_hdf5_hdf5_hl_cpp_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${hdf5_hdf5_hdf5_hl_cpp_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${hdf5_hdf5_hdf5_hl_cpp_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${hdf5_hdf5_hdf5_hl_cpp_DEPENDENCIES_RELEASE}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'hdf5_hdf5_hdf5_hl_cpp_DEPS_TARGET' to all of them
        conan_package_library_targets("${hdf5_hdf5_hdf5_hl_cpp_LIBS_RELEASE}"
                              "${hdf5_hdf5_hdf5_hl_cpp_LIB_DIRS_RELEASE}"
                              "${hdf5_hdf5_hdf5_hl_cpp_BIN_DIRS_RELEASE}" # package_bindir
                              "${hdf5_hdf5_hdf5_hl_cpp_LIBRARY_TYPE_RELEASE}"
                              "${hdf5_hdf5_hdf5_hl_cpp_IS_HOST_WINDOWS_RELEASE}"
                              hdf5_hdf5_hdf5_hl_cpp_DEPS_TARGET
                              hdf5_hdf5_hdf5_hl_cpp_LIBRARIES_TARGETS
                              "_RELEASE"
                              "hdf5_hdf5_hdf5_hl_cpp"
                              "${hdf5_hdf5_hdf5_hl_cpp_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET hdf5::hdf5_hl_cpp
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${hdf5_hdf5_hdf5_hl_cpp_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${hdf5_hdf5_hdf5_hl_cpp_LIBRARIES_TARGETS}>
                     APPEND)

        if("${hdf5_hdf5_hdf5_hl_cpp_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET hdf5::hdf5_hl_cpp
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         hdf5_hdf5_hdf5_hl_cpp_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET hdf5::hdf5_hl_cpp PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${hdf5_hdf5_hdf5_hl_cpp_LINKER_FLAGS_RELEASE}> APPEND)
        set_property(TARGET hdf5::hdf5_hl_cpp PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${hdf5_hdf5_hdf5_hl_cpp_INCLUDE_DIRS_RELEASE}> APPEND)
        set_property(TARGET hdf5::hdf5_hl_cpp PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${hdf5_hdf5_hdf5_hl_cpp_LIB_DIRS_RELEASE}> APPEND)
        set_property(TARGET hdf5::hdf5_hl_cpp PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${hdf5_hdf5_hdf5_hl_cpp_COMPILE_DEFINITIONS_RELEASE}> APPEND)
        set_property(TARGET hdf5::hdf5_hl_cpp PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${hdf5_hdf5_hdf5_hl_cpp_COMPILE_OPTIONS_RELEASE}> APPEND)

    ########## COMPONENT hdf5::hdf5_hl #############

        set(hdf5_hdf5_hdf5_hl_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(hdf5_hdf5_hdf5_hl_FRAMEWORKS_FOUND_RELEASE "${hdf5_hdf5_hdf5_hl_FRAMEWORKS_RELEASE}" "${hdf5_hdf5_hdf5_hl_FRAMEWORK_DIRS_RELEASE}")

        set(hdf5_hdf5_hdf5_hl_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET hdf5_hdf5_hdf5_hl_DEPS_TARGET)
            add_library(hdf5_hdf5_hdf5_hl_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET hdf5_hdf5_hdf5_hl_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${hdf5_hdf5_hdf5_hl_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${hdf5_hdf5_hdf5_hl_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${hdf5_hdf5_hdf5_hl_DEPENDENCIES_RELEASE}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'hdf5_hdf5_hdf5_hl_DEPS_TARGET' to all of them
        conan_package_library_targets("${hdf5_hdf5_hdf5_hl_LIBS_RELEASE}"
                              "${hdf5_hdf5_hdf5_hl_LIB_DIRS_RELEASE}"
                              "${hdf5_hdf5_hdf5_hl_BIN_DIRS_RELEASE}" # package_bindir
                              "${hdf5_hdf5_hdf5_hl_LIBRARY_TYPE_RELEASE}"
                              "${hdf5_hdf5_hdf5_hl_IS_HOST_WINDOWS_RELEASE}"
                              hdf5_hdf5_hdf5_hl_DEPS_TARGET
                              hdf5_hdf5_hdf5_hl_LIBRARIES_TARGETS
                              "_RELEASE"
                              "hdf5_hdf5_hdf5_hl"
                              "${hdf5_hdf5_hdf5_hl_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET hdf5::hdf5_hl
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${hdf5_hdf5_hdf5_hl_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${hdf5_hdf5_hdf5_hl_LIBRARIES_TARGETS}>
                     APPEND)

        if("${hdf5_hdf5_hdf5_hl_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET hdf5::hdf5_hl
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         hdf5_hdf5_hdf5_hl_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET hdf5::hdf5_hl PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${hdf5_hdf5_hdf5_hl_LINKER_FLAGS_RELEASE}> APPEND)
        set_property(TARGET hdf5::hdf5_hl PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${hdf5_hdf5_hdf5_hl_INCLUDE_DIRS_RELEASE}> APPEND)
        set_property(TARGET hdf5::hdf5_hl PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${hdf5_hdf5_hdf5_hl_LIB_DIRS_RELEASE}> APPEND)
        set_property(TARGET hdf5::hdf5_hl PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${hdf5_hdf5_hdf5_hl_COMPILE_DEFINITIONS_RELEASE}> APPEND)
        set_property(TARGET hdf5::hdf5_hl PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${hdf5_hdf5_hdf5_hl_COMPILE_OPTIONS_RELEASE}> APPEND)

    ########## COMPONENT hdf5::hdf5_cpp #############

        set(hdf5_hdf5_hdf5_cpp_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(hdf5_hdf5_hdf5_cpp_FRAMEWORKS_FOUND_RELEASE "${hdf5_hdf5_hdf5_cpp_FRAMEWORKS_RELEASE}" "${hdf5_hdf5_hdf5_cpp_FRAMEWORK_DIRS_RELEASE}")

        set(hdf5_hdf5_hdf5_cpp_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET hdf5_hdf5_hdf5_cpp_DEPS_TARGET)
            add_library(hdf5_hdf5_hdf5_cpp_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET hdf5_hdf5_hdf5_cpp_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${hdf5_hdf5_hdf5_cpp_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${hdf5_hdf5_hdf5_cpp_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${hdf5_hdf5_hdf5_cpp_DEPENDENCIES_RELEASE}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'hdf5_hdf5_hdf5_cpp_DEPS_TARGET' to all of them
        conan_package_library_targets("${hdf5_hdf5_hdf5_cpp_LIBS_RELEASE}"
                              "${hdf5_hdf5_hdf5_cpp_LIB_DIRS_RELEASE}"
                              "${hdf5_hdf5_hdf5_cpp_BIN_DIRS_RELEASE}" # package_bindir
                              "${hdf5_hdf5_hdf5_cpp_LIBRARY_TYPE_RELEASE}"
                              "${hdf5_hdf5_hdf5_cpp_IS_HOST_WINDOWS_RELEASE}"
                              hdf5_hdf5_hdf5_cpp_DEPS_TARGET
                              hdf5_hdf5_hdf5_cpp_LIBRARIES_TARGETS
                              "_RELEASE"
                              "hdf5_hdf5_hdf5_cpp"
                              "${hdf5_hdf5_hdf5_cpp_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET hdf5::hdf5_cpp
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${hdf5_hdf5_hdf5_cpp_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${hdf5_hdf5_hdf5_cpp_LIBRARIES_TARGETS}>
                     APPEND)

        if("${hdf5_hdf5_hdf5_cpp_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET hdf5::hdf5_cpp
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         hdf5_hdf5_hdf5_cpp_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET hdf5::hdf5_cpp PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${hdf5_hdf5_hdf5_cpp_LINKER_FLAGS_RELEASE}> APPEND)
        set_property(TARGET hdf5::hdf5_cpp PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${hdf5_hdf5_hdf5_cpp_INCLUDE_DIRS_RELEASE}> APPEND)
        set_property(TARGET hdf5::hdf5_cpp PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${hdf5_hdf5_hdf5_cpp_LIB_DIRS_RELEASE}> APPEND)
        set_property(TARGET hdf5::hdf5_cpp PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${hdf5_hdf5_hdf5_cpp_COMPILE_DEFINITIONS_RELEASE}> APPEND)
        set_property(TARGET hdf5::hdf5_cpp PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${hdf5_hdf5_hdf5_cpp_COMPILE_OPTIONS_RELEASE}> APPEND)

    ########## COMPONENT hdf5::hdf5 #############

        set(hdf5_hdf5_hdf5_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(hdf5_hdf5_hdf5_FRAMEWORKS_FOUND_RELEASE "${hdf5_hdf5_hdf5_FRAMEWORKS_RELEASE}" "${hdf5_hdf5_hdf5_FRAMEWORK_DIRS_RELEASE}")

        set(hdf5_hdf5_hdf5_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET hdf5_hdf5_hdf5_DEPS_TARGET)
            add_library(hdf5_hdf5_hdf5_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET hdf5_hdf5_hdf5_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${hdf5_hdf5_hdf5_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${hdf5_hdf5_hdf5_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${hdf5_hdf5_hdf5_DEPENDENCIES_RELEASE}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'hdf5_hdf5_hdf5_DEPS_TARGET' to all of them
        conan_package_library_targets("${hdf5_hdf5_hdf5_LIBS_RELEASE}"
                              "${hdf5_hdf5_hdf5_LIB_DIRS_RELEASE}"
                              "${hdf5_hdf5_hdf5_BIN_DIRS_RELEASE}" # package_bindir
                              "${hdf5_hdf5_hdf5_LIBRARY_TYPE_RELEASE}"
                              "${hdf5_hdf5_hdf5_IS_HOST_WINDOWS_RELEASE}"
                              hdf5_hdf5_hdf5_DEPS_TARGET
                              hdf5_hdf5_hdf5_LIBRARIES_TARGETS
                              "_RELEASE"
                              "hdf5_hdf5_hdf5"
                              "${hdf5_hdf5_hdf5_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET hdf5::hdf5
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${hdf5_hdf5_hdf5_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${hdf5_hdf5_hdf5_LIBRARIES_TARGETS}>
                     APPEND)

        if("${hdf5_hdf5_hdf5_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET hdf5::hdf5
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         hdf5_hdf5_hdf5_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET hdf5::hdf5 PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${hdf5_hdf5_hdf5_LINKER_FLAGS_RELEASE}> APPEND)
        set_property(TARGET hdf5::hdf5 PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${hdf5_hdf5_hdf5_INCLUDE_DIRS_RELEASE}> APPEND)
        set_property(TARGET hdf5::hdf5 PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${hdf5_hdf5_hdf5_LIB_DIRS_RELEASE}> APPEND)
        set_property(TARGET hdf5::hdf5 PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${hdf5_hdf5_hdf5_COMPILE_DEFINITIONS_RELEASE}> APPEND)
        set_property(TARGET hdf5::hdf5 PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${hdf5_hdf5_hdf5_COMPILE_OPTIONS_RELEASE}> APPEND)

    ########## AGGREGATED GLOBAL TARGET WITH THE COMPONENTS #####################
    set_property(TARGET HDF5::HDF5 PROPERTY INTERFACE_LINK_LIBRARIES hdf5::hdf5_hl_cpp APPEND)
    set_property(TARGET HDF5::HDF5 PROPERTY INTERFACE_LINK_LIBRARIES hdf5::hdf5_hl APPEND)
    set_property(TARGET HDF5::HDF5 PROPERTY INTERFACE_LINK_LIBRARIES hdf5::hdf5_cpp APPEND)
    set_property(TARGET HDF5::HDF5 PROPERTY INTERFACE_LINK_LIBRARIES hdf5::hdf5 APPEND)

########## For the modules (FindXXX)
set(hdf5_LIBRARIES_RELEASE HDF5::HDF5)
