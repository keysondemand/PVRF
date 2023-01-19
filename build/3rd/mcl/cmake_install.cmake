# Install script for directory: /Users/easwarvivek/research-dvrf/3rd/mcl

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/easwarvivek/research-dvrf/build/lib/libmcl.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmcl.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmcl.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmcl.dylib")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/easwarvivek/research-dvrf/build/lib/libmcl.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmcl.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmcl.a")
    execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmcl.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/easwarvivek/research-dvrf/build/lib/libmclbn256.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmclbn256.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmclbn256.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/easwarvivek/research-dvrf/build/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmclbn256.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmclbn256.dylib")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/easwarvivek/research-dvrf/build/lib/libmclbn384.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmclbn384.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmclbn384.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/easwarvivek/research-dvrf/build/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmclbn384.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmclbn384.dylib")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/easwarvivek/research-dvrf/build/lib/libmclbn384_256.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmclbn384_256.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmclbn384_256.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/easwarvivek/research-dvrf/build/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmclbn384_256.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmclbn384_256.dylib")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/easwarvivek/research-dvrf/build/lib/libmclbn512.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmclbn512.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmclbn512.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/easwarvivek/research-dvrf/build/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmclbn512.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmclbn512.dylib")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/mcl" TYPE FILE FILES
    "/Users/easwarvivek/research-dvrf/3rd/mcl/include/mcl/aggregate_sig.hpp"
    "/Users/easwarvivek/research-dvrf/3rd/mcl/include/mcl/array.hpp"
    "/Users/easwarvivek/research-dvrf/3rd/mcl/include/mcl/bls12_381.hpp"
    "/Users/easwarvivek/research-dvrf/3rd/mcl/include/mcl/bn.h"
    "/Users/easwarvivek/research-dvrf/3rd/mcl/include/mcl/bn.hpp"
    "/Users/easwarvivek/research-dvrf/3rd/mcl/include/mcl/bn256.hpp"
    "/Users/easwarvivek/research-dvrf/3rd/mcl/include/mcl/bn384.hpp"
    "/Users/easwarvivek/research-dvrf/3rd/mcl/include/mcl/bn512.hpp"
    "/Users/easwarvivek/research-dvrf/3rd/mcl/include/mcl/conversion.hpp"
    "/Users/easwarvivek/research-dvrf/3rd/mcl/include/mcl/curve_type.h"
    "/Users/easwarvivek/research-dvrf/3rd/mcl/include/mcl/ec.hpp"
    "/Users/easwarvivek/research-dvrf/3rd/mcl/include/mcl/ecdsa.hpp"
    "/Users/easwarvivek/research-dvrf/3rd/mcl/include/mcl/ecparam.hpp"
    "/Users/easwarvivek/research-dvrf/3rd/mcl/include/mcl/elgamal.hpp"
    "/Users/easwarvivek/research-dvrf/3rd/mcl/include/mcl/fp.hpp"
    "/Users/easwarvivek/research-dvrf/3rd/mcl/include/mcl/fp_tower.hpp"
    "/Users/easwarvivek/research-dvrf/3rd/mcl/include/mcl/gmp_util.hpp"
    "/Users/easwarvivek/research-dvrf/3rd/mcl/include/mcl/lagrange.hpp"
    "/Users/easwarvivek/research-dvrf/3rd/mcl/include/mcl/mapto_wb19.hpp"
    "/Users/easwarvivek/research-dvrf/3rd/mcl/include/mcl/op.hpp"
    "/Users/easwarvivek/research-dvrf/3rd/mcl/include/mcl/operator.hpp"
    "/Users/easwarvivek/research-dvrf/3rd/mcl/include/mcl/paillier.hpp"
    "/Users/easwarvivek/research-dvrf/3rd/mcl/include/mcl/randgen.hpp"
    "/Users/easwarvivek/research-dvrf/3rd/mcl/include/mcl/she.hpp"
    "/Users/easwarvivek/research-dvrf/3rd/mcl/include/mcl/util.hpp"
    "/Users/easwarvivek/research-dvrf/3rd/mcl/include/mcl/vint.hpp"
    "/Users/easwarvivek/research-dvrf/3rd/mcl/include/mcl/window_method.hpp"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/mcl/impl" TYPE FILE FILES "/Users/easwarvivek/research-dvrf/3rd/mcl/include/mcl/impl/bn_c_impl.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cybozu" TYPE FILE FILES
    "/Users/easwarvivek/research-dvrf/3rd/mcl/include/cybozu/array.hpp"
    "/Users/easwarvivek/research-dvrf/3rd/mcl/include/cybozu/atoi.hpp"
    "/Users/easwarvivek/research-dvrf/3rd/mcl/include/cybozu/atomic.hpp"
    "/Users/easwarvivek/research-dvrf/3rd/mcl/include/cybozu/benchmark.hpp"
    "/Users/easwarvivek/research-dvrf/3rd/mcl/include/cybozu/bit_operation.hpp"
    "/Users/easwarvivek/research-dvrf/3rd/mcl/include/cybozu/critical_section.hpp"
    "/Users/easwarvivek/research-dvrf/3rd/mcl/include/cybozu/crypto.hpp"
    "/Users/easwarvivek/research-dvrf/3rd/mcl/include/cybozu/endian.hpp"
    "/Users/easwarvivek/research-dvrf/3rd/mcl/include/cybozu/exception.hpp"
    "/Users/easwarvivek/research-dvrf/3rd/mcl/include/cybozu/file.hpp"
    "/Users/easwarvivek/research-dvrf/3rd/mcl/include/cybozu/hash.hpp"
    "/Users/easwarvivek/research-dvrf/3rd/mcl/include/cybozu/inttype.hpp"
    "/Users/easwarvivek/research-dvrf/3rd/mcl/include/cybozu/itoa.hpp"
    "/Users/easwarvivek/research-dvrf/3rd/mcl/include/cybozu/link_libeay32.hpp"
    "/Users/easwarvivek/research-dvrf/3rd/mcl/include/cybozu/link_mpir.hpp"
    "/Users/easwarvivek/research-dvrf/3rd/mcl/include/cybozu/link_ssleay32.hpp"
    "/Users/easwarvivek/research-dvrf/3rd/mcl/include/cybozu/mutex.hpp"
    "/Users/easwarvivek/research-dvrf/3rd/mcl/include/cybozu/option.hpp"
    "/Users/easwarvivek/research-dvrf/3rd/mcl/include/cybozu/random_generator.hpp"
    "/Users/easwarvivek/research-dvrf/3rd/mcl/include/cybozu/serializer.hpp"
    "/Users/easwarvivek/research-dvrf/3rd/mcl/include/cybozu/sha2.hpp"
    "/Users/easwarvivek/research-dvrf/3rd/mcl/include/cybozu/socket.hpp"
    "/Users/easwarvivek/research-dvrf/3rd/mcl/include/cybozu/stream.hpp"
    "/Users/easwarvivek/research-dvrf/3rd/mcl/include/cybozu/test.hpp"
    "/Users/easwarvivek/research-dvrf/3rd/mcl/include/cybozu/time.hpp"
    "/Users/easwarvivek/research-dvrf/3rd/mcl/include/cybozu/unordered_map.hpp"
    "/Users/easwarvivek/research-dvrf/3rd/mcl/include/cybozu/xorshift.hpp"
    )
endif()

