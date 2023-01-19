cmake_minimum_required(VERSION 3.2)

set(PROJECT_NAME noisec)
project(${PROJECT_NAME} VERSION 0.5 LANGUAGES ASM C)

option(ENABLE_ASAN "Enable address santizer" OFF)
option(ENABLE_UBSAN "Enable undefined santizer" OFF)
option(USE_SODIUM "Use Libsodium for crypto" OFF)
option(USE_OPENSSL "Use Openssl for crypto" OFF)
option(PROTOCOL_LIB_ONLY "Build protocol library only" ON)

set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(THREADS_PREFER_PTHREAD_FLAG ON)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall")

# Default to a release build
if (NOT CMAKE_BUILD_TYPE)
    message(STATUS "Defaulting to Release build")
    set(CMAKE_BUILD_TYPE "Release" CACHE STRING "The build configuration" FORCE)
endif (NOT CMAKE_BUILD_TYPE)

# Set goldilocks architecture
# available: arch_32, arch_arm_32, arch_neon, arch_ref64, arch_x86_64
set(TARGET_ARCH_DIR_P448 arch_32)
if (${CMAKE_SYSTEM_PROCESSOR} MATCHES "x86_64")
    set(TARGET_ARCH_DIR_P448 arch_x86_64)
elseif (${CMAKE_SYSTEM_PROCESSOR} MATCHES "arch64")
    set(TARGET_ARCH_DIR_P448 arch_ref64)
elseif (${CMAKE_SYSTEM_PROCESSOR} MATCHES "arm")
    if (NOT ${CMAKE_ANDROID_ARCH_ABI} STREQUAL "armeabi")
        if (${ANDROID_ARM_NEON})
            set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -mfpu=neon")
            set(TARGET_ARCH_DIR_P448 arch_neon)
        else (${ANDROID_ARM_NEON})
            set(TARGET_ARCH_DIR_P448 arch_arm_32)
        endif (${ANDROID_ARM_NEON})
    endif (NOT ${CMAKE_ANDROID_ARCH_ABI} STREQUAL "armeabi")
else ()
    message("Target architecture is general purpose 32bits")
endif ()

set(GOLDILOCKS_SRC_DIR ${PROJECT_SOURCE_DIR}/src/crypto/goldilocks/src/p448/${TARGET_ARCH_DIR_P448})

if (ENABLE_ASAN)
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fsanitize=address")
endif (ENABLE_ASAN)

if (ENABLE_UBSAN)
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fsanitize=undefined")
endif (ENABLE_UBSAN)

if (NOT EXTERNAL_OPENSSL)
    find_package(OpenSSL REQUIRED)
    if (OPENSSL_FOUND)
        message(STATUS "Using OpenSSL ${OPENSSL_VERSION}")
    endif (OPENSSL_FOUND)
else ()
    message(STATUS "Using external openssl ${EXTERNAL_OPENSSL}")
endif (NOT EXTERNAL_OPENSSL)

find_package(Threads REQUIRED)

if (USE_SODIUM)
    list(APPEND CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/cmake)
    find_package(sodium REQUIRED)
    if (sodium_FOUND)
        message(STATUS "Using libsodium ${sodium_VERSION_STRING}")
    endif (sodium_FOUND)
endif (USE_SODIUM)

if (USE_OPENSSL)
    file(GLOB OPENSSL_SRCS "${CMAKE_CURRENT_SOURCE_DIR}/src/backend/openssl/*.c")
endif (USE_OPENSSL)

## Set up noise c library without protobuf library

# Headers
file(GLOB NOISEC_PROTOCOL_HEADERS "${CMAKE_CURRENT_SOURCE_DIR}/include/noise/protocol/*.h")
file(GLOB_RECURSE NOISEC_CRYPTO_HEADERS "${CMAKE_CURRENT_SOURCE_DIR}/src/crypto/*.h")
set(NOISEC_HEADERS
        ${NOISEC_PROTOCOL_HEADERS}
        ${NOISEC_CRYPTO_HEADERS})

# Sources
file(GLOB NOISEC_PROTOCOL_SRCS "${CMAKE_CURRENT_SOURCE_DIR}/src/protocol/*.c")
file(GLOB NOISEC_CRYPTO_25519_SRCS "${CMAKE_CURRENT_SOURCE_DIR}/src/crypto/ed25519/*.c")
file(GLOB NOISEC_CRYPTO_SHA_SRCS "${CMAKE_CURRENT_SOURCE_DIR}/src/crypto/sha2/*.c")
file(GLOB NOISEC_CRYPTO_BLAKE_SRCS "${CMAKE_CURRENT_SOURCE_DIR}/src/crypto/blake2/*.c")
file(GLOB NOISEC_CRYPTO_GHASH_SRCS "${CMAKE_CURRENT_SOURCE_DIR}/src/crypto/ghash/*.c")
file(GLOB NOISEC_CRYPTO_NEWHOPE_SRCS "${CMAKE_CURRENT_SOURCE_DIR}/src/crypto/newhope/*.c")
file(GLOB NOISEC_CRYPTO_AES_SRCS "${CMAKE_CURRENT_SOURCE_DIR}/src/crypto/aes/*.c")
file(GLOB NOISEC_CRYPTO_CHACHA_SRCS "${CMAKE_CURRENT_SOURCE_DIR}/src/crypto/chacha/*.c")
file(GLOB NOISEC_CRYPTO_DONNA_SRCS "${CMAKE_CURRENT_SOURCE_DIR}/src/crypto/donna/*.c")
file(GLOB NOISEC_CRYPTO_448_SRCS "${CMAKE_CURRENT_SOURCE_DIR}/src/crypto/curve448/*.c")
file(GLOB NOISEC_CRYPTO_GOLDILOCKS_SRCS "${GOLDILOCKS_SRC_DIR}/*.c")
set(NOISEC_SRCS
        ${NOISEC_PROTOCOL_SRCS}
        ${NOISEC_CRYPTO_25519_SRCS}
        ${NOISEC_CRYPTO_SHA_SRCS}
        ${NOISEC_CRYPTO_BLAKE_SRCS}
        ${NOISEC_CRYPTO_GHASH_SRCS}
        ${NOISEC_CRYPTO_AES_SRCS}
        ${NOISEC_CRYPTO_NEWHOPE_SRCS}
        ${NOISEC_CRYPTO_CHACHA_SRCS}
        ${NOISEC_CRYPTO_DONNA_SRCS}
        ${NOISEC_CRYPTO_448_SRCS}
        ${NOISEC_CRYPTO_GOLDILOCKS_SRCS})

# Set sources for crypto backend
set(NOISEC_BACKEND_REF_DIR ${CMAKE_CURRENT_SOURCE_DIR}/src/backend/ref)
set(SODIUM_BACKEND_DIR ${CMAKE_CURRENT_SOURCE_DIR}/src/backend/sodium)
set(NOISEC_BACKEND_SRCS
        ${NOISEC_BACKEND_REF_DIR}/dh-curve448.c
        ${NOISEC_BACKEND_REF_DIR}/dh-newhope.c
        ${NOISEC_BACKEND_REF_DIR}/hash-blake2s.c)
if (USE_SODIUM)
    set(NOISEC_BACKEND_SRCS
            ${NOISEC_BACKEND_SRCS}
            ${SODIUM_BACKEND_DIR}/cipher-chachapoly.c
            ${SODIUM_BACKEND_DIR}/dh-curve25519.c
            ${SODIUM_BACKEND_DIR}/hash-blake2b.c
            ${SODIUM_BACKEND_DIR}/hash-sha256.c
            ${SODIUM_BACKEND_DIR}/hash-sha512.c
            ${SODIUM_BACKEND_DIR}/sign-ed25519.c)
else ()
    set(NOISEC_BACKEND_SRCS
            ${NOISEC_BACKEND_SRCS}
            ${NOISEC_BACKEND_REF_DIR}/cipher-chachapoly.c
            ${NOISEC_BACKEND_REF_DIR}/dh-curve25519.c
            ${NOISEC_BACKEND_REF_DIR}/hash-blake2b.c
            ${NOISEC_BACKEND_REF_DIR}/hash-sha256.c
            ${NOISEC_BACKEND_REF_DIR}/hash-sha512.c
            ${NOISEC_BACKEND_REF_DIR}/sign-ed25519.c)
endif ()
if (USE_OPENSSL)
    set(NOISEC_BACKEND_SRCS
            ${NOISEC_BACKEND_SRCS}
            ${OPENSSL_SRCS})
elseif (USE_SODIUM)
    set(NOISEC_BACKEND_SRCS
            ${NOISEC_BACKEND_SRCS}
            ${SODIUM_BACKEND_DIR}/cipher-aesgcm.c)
else ()
    set(NOISEC_BACKEND_SRCS
            ${NOISEC_BACKEND_SRCS}
            ${NOISEC_BACKEND_REF_DIR}/cipher-aesgcm.c)
endif ()

set(NOISEC_SRCS ${NOISEC_SRCS} ${NOISEC_BACKEND_SRCS})

# Create libary
add_library(noise_protocol ${NOISEC_HEADERS} ${NOISEC_SRCS})
SET_TARGET_PROPERTIES(noise_protocol PROPERTIES LINKER_LANGUAGE C)
target_compile_definitions(noise_protocol PRIVATE -D_DEFAULT_SOURCE)
target_include_directories(noise_protocol PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include/)

# Internal library headers
target_include_directories(noise_protocol PRIVATE
        ${CMAKE_CURRENT_SOURCE_DIR}/include/noise/protocol
        ${CMAKE_CURRENT_SOURCE_DIR}/src/protocol
        ${CMAKE_CURRENT_SOURCE_DIR}/src
        ${CMAKE_CURRENT_SOURCE_DIR}/src/crypto/goldilocks/src/include
        ${CMAKE_CURRENT_SOURCE_DIR}/src/crypto/goldilocks/src/p448/${TARGET_ARCH_DIR_P448}
        ${CMAKE_CURRENT_SOURCE_DIR}/src/crypto/goldilocks/src/p448)

if (USE_SODIUM)
    target_link_libraries(noise_protocol sodium)
endif (USE_SODIUM)

if (EXTERNAL_OPENSSL)
    target_link_libraries(noise_protocol ${EXTERNAL_OPENSSL})
else ()
    target_link_libraries(noise_protocol OpenSSL::SSL OpenSSL::Crypto)
endif ()

## Set up protobuf library if chosen in option

if (NOT PROTOCOL_LIB_ONLY)
    find_package(BISON REQUIRED)
    find_package(FLEX REQUIRED)

    # Headers
    file(GLOB NOISEC_KEY_HEADERS "${CMAKE_CURRENT_SOURCE_DIR}/include/noise/key/*.h")
    set(NOISEC_PROTOBUF_HEADERS
            ${CMAKE_CURRENT_SOURCE_DIR}/include/noise/keys.h
            ${CMAKE_CURRENT_SOURCE_DIR}/include/noise/protobufs.h
            ${CMAKE_CURRENT_SOURCE_DIR}/include/noise/protocol/constants.h
            ${NOISEC_KEY_HEADERS})

    # Sources
    file(GLOB NOISE_KEY_SRCS "${CMAKE_CURRENT_SOURCE_DIR}/src/keys/*.c")
    set(NOISEC_PROTOBUF_SRCS
            ${CMAKE_CURRENT_SOURCE_DIR}/src/protobufs/protobufs.c
            ${NOISE_KEY_SRCS})

    add_library(noise_protobuf ${NOISEC_PROTOBUF_HEADERS} ${NOISEC_PROTOBUF_SRCS})
    SET_TARGET_PROPERTIES(noise_protobuf PROPERTIES LINKER_LANGUAGE C)
    target_include_directories(noise_protobuf PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include/)

    # Internal library headers
    target_include_directories(noise_protobuf PRIVATE
            ${CMAKE_CURRENT_SOURCE_DIR}/include/noise/keys
            ${CMAKE_CURRENT_SOURCE_DIR}/include)
    target_link_libraries(noise_protobuf ${noise_protocol})
endif (NOT PROTOCOL_LIB_ONLY)
