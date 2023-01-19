# Install script for directory: /Users/easwarvivek/research-dvrf/3rd/relic

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/Library/Developer/CommandLineTools/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/relic" TYPE FILE FILES
    "/Users/easwarvivek/research-dvrf/3rd/relic/include/relic.h"
    "/Users/easwarvivek/research-dvrf/3rd/relic/include/relic_alloc.h"
    "/Users/easwarvivek/research-dvrf/3rd/relic/include/relic_arch.h"
    "/Users/easwarvivek/research-dvrf/3rd/relic/include/relic_bc.h"
    "/Users/easwarvivek/research-dvrf/3rd/relic/include/relic_bench.h"
    "/Users/easwarvivek/research-dvrf/3rd/relic/include/relic_bn.h"
    "/Users/easwarvivek/research-dvrf/3rd/relic/include/relic_core.h"
    "/Users/easwarvivek/research-dvrf/3rd/relic/include/relic_cp.h"
    "/Users/easwarvivek/research-dvrf/3rd/relic/include/relic_dv.h"
    "/Users/easwarvivek/research-dvrf/3rd/relic/include/relic_eb.h"
    "/Users/easwarvivek/research-dvrf/3rd/relic/include/relic_ec.h"
    "/Users/easwarvivek/research-dvrf/3rd/relic/include/relic_ed.h"
    "/Users/easwarvivek/research-dvrf/3rd/relic/include/relic_ep.h"
    "/Users/easwarvivek/research-dvrf/3rd/relic/include/relic_epx.h"
    "/Users/easwarvivek/research-dvrf/3rd/relic/include/relic_err.h"
    "/Users/easwarvivek/research-dvrf/3rd/relic/include/relic_fb.h"
    "/Users/easwarvivek/research-dvrf/3rd/relic/include/relic_fbx.h"
    "/Users/easwarvivek/research-dvrf/3rd/relic/include/relic_fp.h"
    "/Users/easwarvivek/research-dvrf/3rd/relic/include/relic_fpx.h"
    "/Users/easwarvivek/research-dvrf/3rd/relic/include/relic_label.h"
    "/Users/easwarvivek/research-dvrf/3rd/relic/include/relic_md.h"
    "/Users/easwarvivek/research-dvrf/3rd/relic/include/relic_pc.h"
    "/Users/easwarvivek/research-dvrf/3rd/relic/include/relic_pp.h"
    "/Users/easwarvivek/research-dvrf/3rd/relic/include/relic_rand.h"
    "/Users/easwarvivek/research-dvrf/3rd/relic/include/relic_test.h"
    "/Users/easwarvivek/research-dvrf/3rd/relic/include/relic_types.h"
    "/Users/easwarvivek/research-dvrf/3rd/relic/include/relic_util.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/relic/low" TYPE FILE FILES
    "/Users/easwarvivek/research-dvrf/3rd/relic/include/low/relic_bn_low.h"
    "/Users/easwarvivek/research-dvrf/3rd/relic/include/low/relic_dv_low.h"
    "/Users/easwarvivek/research-dvrf/3rd/relic/include/low/relic_fb_low.h"
    "/Users/easwarvivek/research-dvrf/3rd/relic/include/low/relic_fp_low.h"
    "/Users/easwarvivek/research-dvrf/3rd/relic/include/low/relic_fpx_low.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/relic" TYPE DIRECTORY FILES "/Users/easwarvivek/research-dvrf/build/3rd/relic/include/")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES "/Users/easwarvivek/research-dvrf/3rd/relic/cmake/relic-config.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/Users/easwarvivek/research-dvrf/build/3rd/relic/src/cmake_install.cmake")
  include("/Users/easwarvivek/research-dvrf/build/3rd/relic/test/cmake_install.cmake")
  include("/Users/easwarvivek/research-dvrf/build/3rd/relic/bench/cmake_install.cmake")

endif()

