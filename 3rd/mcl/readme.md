[![Build Status](https://travis-ci.org/herumi/mcl.png)](https://travis-ci.org/herumi/mcl)

# mcl

A portable and fast pairing-based cryptography library.

# Abstract

mcl is a library for pairing-based cryptography,
which supports the optimal Ate pairing over BN curves and BLS12-381 curves.

# News
add new hash functions corresponding to python-impl of [algorand/bls_sig_ref](https://github.com/algorand/bls_sigs_ref).
* `mclBn_ethMsgToFp2`(resp. `Hp2`)
* `mclBn_ethFp2ToG2`(resp. `opt_swu2_map`)
* `mclBn_ethMsgToG2`(resp. `map2curve_osswu2`)

# Support architecture

- x86-64 Windows + Visual Studio
- x86, x86-64 Linux + gcc/clang
- x86-64 macOS
- ARM / ARM64 Linux
- WebAssembly
- Android
- iPhone
- (maybe any platform to be supported by LLVM)

# Support curves

- BN curve ; p(z) = 36z^4 + 36z^3 + 24z^2 + 6z + 1.
  - BN254 ; a BN curve over the 254-bit prime p(z) where z = -(2^62 + 2^55 + 1).
  - BN\_SNARK1 ; a BN curve over a 254-bit prime p such that n := p + 1 - t has high 2-adicity.
  - BN381\_1 ; a BN curve over the 381-bit prime p(z) where z = -(2^94 + 2^76 + 2^72 + 1).
  - BN462 ; a BN curve over the 462-bit prime p(z) where z = 2^114 + 2^101 - 2^14 - 1.
- BLS12\_381 ; [a BLS12-381 curve](https://blog.z.cash/new-snark-curve/)

# C-API
see [api.md](api.md)

# How to build on Linux and macOS
x86-64/ARM/ARM64 Linux, macOS and mingw64 are supported.

## Installation Requirements

[GMP](https://gmplib.org/) is necessary (default setting).

```
apt install libgmp-dev # on Ubuntu
```

## How to build with Makefile

```
git clone git://github.com/herumi/mcl
cd mcl
make -j4
```

- `lib/libmcl.*` ; core library
- `lib/libmclbn384_256.*` ; library to use C-API of BLS12-381 pairing

## How to test of BLS12-381 pairing

```
# C
make bin/bn_c384_256_test.exe && bin/bn_c384_256_test.exe

# C++
make bin/bls12_test.exe && bin/bls12_test.exe
```

## How to build without GMP

```
make MCL_USE_GMP=0

```
Define `MCL_USE_VINT` if using C++ header files.


## How to build on 32-bit x86 Linux

Build GMP and for 32-bit mode and install `<lib32>` at yourself.

```
make ARCH=x86 CFLAGS_USER="-I <lib32>/include" LDFLAGS_USER="-L <lib32>/lib -Wl,-rpath,<lib32>/lib"
```

# How to build on 64-bit Windows with Visual Studio

Clone cybozulib\_ext,
which provides compiled binaries of [MPIR](http://mpir.org/).

```
mkdir work
cd work
git clone git://github.com/herumi/mcl
git clone git://github.com/herumi/cybozulib_ext
cd work
# static library
mklib
mk -s test\bls12_test.cpp && bin\bls12_test.exe
# dynamic library
mklib dll
mk -d test\bls12_test.cpp && bin\bls12_test.exe
```

(not maintenanced)
Open mcl.sln and build or if you have msbuild.exe
```
msbuild /p:Configuration=Release
```

# How to build with CMake

For Linux, macOS, etc.
```
mkdir build
cd build
cmake ..
make
```
For Visual Studio,
```
mkdir build
cd build
cmake .. -A x64
msbuild mcl.sln /p:Configuration=Release /m
```

## options

```
cmake .. USE_GMP=OFF ; without GMP
```
see `cmake .. -LA`.

# How to build for wasm(WebAssembly)
mcl supports emcc (Emscripten) and `test/bn_test.cpp` runs on browers such as Firefox, Chrome and Edge.

* [IBE on browser](https://herumi.github.io/mcl-wasm/ibe-demo.html)
* [SHE on browser](https://herumi.github.io/she-wasm/she-demo.html)
* [BLS signature on brower](https://herumi.github.io/bls-wasm/bls-demo.html)

The timing of a pairing on `BN254` is 2.8msec on 64-bit Firefox with Skylake 3.4GHz.

# Node.js

* [mcl-wasm](https://www.npmjs.com/package/mcl-wasm) pairing library
* [bls-wasm](https://www.npmjs.com/package/bls-wasm) BLS signature library
* [she-wasm](https://www.npmjs.com/package/she-wasm) 2 Level Homomorphic Encryption library

# Benchmark

## The latest benchmark(2018/11/7)

### Intel Core i7-6700 3.4GHz(Skylake), Ubuntu 18.04.1 LTS

curveType |              binary|clang-6.0.0|gcc-7.3.0|
----------|--------------------|-----------|---------|
BN254     |    bin/bn\_test.exe|    882Kclk|  933Kclk|
BLS12-381 | bin/bls12\_test.exe|   2290Kclk| 2630Kclk|

### Intel Core i7-7700 3.6GHz(Kaby Lake), Ubuntu 18.04.1 LTS on Windows 10 Vmware

curveType |              binary|clang-6.0.0|gcc-7.3.0|
----------|--------------------|-----------|---------|
BN254     |    bin/bn\_test.exe|    900Kclk|  954Kclk|
BLS12-381 | bin/bls12\_test.exe|   2340Kclk| 2680Kclk|

* now investigating the reason why gcc is slower than clang.

## Higher-bit BN curve benchmark

For JavaScript(WebAssembly), see [ID based encryption demo](https://herumi.github.io/mcl-wasm/ibe-demo.html).

paramter   |  x64| Firefox on x64|Safari on iPhone7|
-----------|-----|---------------|-----------------|
BN254      | 0.25|           2.48|             4.78|
BN381\_1   | 0.95|           7.91|            11.74|
BN462      | 2.16|          14.73|            22.77|

* x64 : 'Kaby Lake Core i7-7700(3.6GHz)'.
* Firefox : 64-bit version 58.
* iPhone7 : iOS 11.2.1.
* BN254 is by `test/bn_test.cpp`.
* BN381\_1 and BN462 are  by `test/bn512_test.cpp`.
* All the timings  are given in ms(milliseconds).

The other benchmark results are [bench.txt](bench.txt).

## An old benchmark of a BN curve BN254(2016/12/25).

* x64, x86 ; Inte Core i7-6700 3.4GHz(Skylake) upto 4GHz on Ubuntu 16.04.
    * `sudo cpufreq-set -g performance`
* arm ; 900MHz quad-core ARM Cortex-A7 on Raspberry Pi2, Linux 4.4.11-v7+
* arm64 ; 1.2GHz ARM Cortex-A53 [HiKey](http://www.96boards.org/product/hikey/)

software                                                 |   x64|  x86| arm|arm64(msec)
---------------------------------------------------------|------|-----|----|-----
[ate-pairing](https://github.com/herumi/ate-pairing)     | 0.21 |   - |  - |    -
mcl                                                      | 0.31 | 1.6 |22.6|  3.9
[TEPLA](http://www.cipher.risk.tsukuba.ac.jp/tepla/)     | 1.76 | 3.7 | 37 | 17.9
[RELIC](https://github.com/relic-toolkit/relic) PRIME=254| 0.30 | 3.5 | 36 |    -
[MIRACL](https://github.com/miracl/MIRACL) ake12bnx      | 4.2  |   - | 78 |    -
[NEONabe](http://sandia.cs.cinvestav.mx/Site/NEONabe)    |   -  |   - | 16 |    -

* compile option for RELIC
```
cmake -DARITH=x64-asm-254 -DFP_PRIME=254 -DFPX_METHD="INTEG;INTEG;LAZYR" -DPP_METHD="LAZYR;OATEP"
```

# SELinux
mcl uses Xbyak JIT engine if it is available on x64 architecture,
otherwise mcl uses a little slower functions generated by LLVM.
The default mode enables SELinux security policy on CentOS, then JIT is disabled.
```
% sudo setenforce 1
% getenforce
Enforcing
% bin/bn_test.exe
JIT 0
pairing   1.496Mclk
finalExp 581.081Kclk

% sudo setenforce 0
% getenforce
Permissive
% bin/bn_test.exe
JIT 1
pairing   1.394Mclk
finalExp 546.259Kclk
```

# How to make asm files (optional)
The asm files generated by this way are already put in `src/asm`, then it is not necessary to do this.

Install [LLVM](http://llvm.org/).
```
make MCL_USE_LLVM=1 LLVM_VER=<llvm-version> UPDATE_ASM=1
```
For example, specify `-3.8` for `<llvm-version>` if `opt-3.8` and `llc-3.8` are installed.

If you want to use Fp with 1024-bit prime on x86-64, then
```
make MCL_USE_LLVM=1 LLVM_VER=<llvm-version> UPDATE_ASM=1 MCL_MAX_BIT_SIZE=1024
```

# API for Two level homomorphic encryption
* [_Efficient Two-level Homomorphic Encryption in Prime-order Bilinear Groups and A Fast Implementation in WebAssembly_](https://dl.acm.org/citation.cfm?doid=3196494.3196552), N. Attrapadung, G. Hanaoka, S. Mitsunari, Y. Sakai,
K. Shimizu, and T. Teruya. ASIACCS 2018
* [she-api](https://github.com/herumi/mcl/blob/master/misc/she/she-api.md)
* [she-api(Japanese)](https://github.com/herumi/mcl/blob/master/misc/she/she-api-ja.md)

# Java API
See [java.md](https://github.com/herumi/mcl/blob/master/ffi/java/java.md)

# License

modified new BSD License
http://opensource.org/licenses/BSD-3-Clause

This library contains some part of the followings software licensed by BSD-3-Clause.
* [xbyak](https://github.com/heurmi/xbyak)
* [cybozulib](https://github.com/heurmi/cybozulib)
* [Lifted-ElGamal](https://github.com/aistcrypt/Lifted-ElGamal)

# References
* [ate-pairing](https://github.com/herumi/ate-pairing/)
* [_Faster Explicit Formulas for Computing Pairings over Ordinary Curves_](http://dx.doi.org/10.1007/978-3-642-20465-4_5),
 D.F. Aranha, K. Karabina, P. Longa, C.H. Gebotys, J. Lopez,
 EUROCRYPTO 2011, ([preprint](http://eprint.iacr.org/2010/526))
* [_High-Speed Software Implementation of the Optimal Ate Pairing over Barreto-Naehrig Curves_](http://dx.doi.org/10.1007/978-3-642-17455-1_2),
   Jean-Luc Beuchat, Jorge Enrique González Díaz, Shigeo Mitsunari, Eiji Okamoto, Francisco Rodríguez-Henríquez, Tadanori Teruya,
  Pairing 2010, ([preprint](http://eprint.iacr.org/2010/354))
* [_Faster hashing to G2_](https://link.springer.com/chapter/10.1007/978-3-642-28496-0_25),Laura Fuentes-Castañeda,  Edward Knapp,  Francisco Rodríguez-Henríquez,
  SAC 2011, ([PDF](http://cacr.uwaterloo.ca/techreports/2011/cacr2011-26.pdf))
* [_Skew Frobenius Map and Efficient Scalar Multiplication for Pairing–Based Cryptography_](https://www.researchgate.net/publication/221282560_Skew_Frobenius_Map_and_Efficient_Scalar_Multiplication_for_Pairing-Based_Cryptography),
Y. Sakemi, Y. Nogami, K. Okeya, Y. Morikawa, CANS 2008.

# compatilibity

- mclBnGT_inv returns a - b w, a conjugate of x for x = a + b w in Fp12 = Fp6[w]
  - use mclBnGT_invGeneric if x is not in GT
- mclBn_setETHserialization(true) (de)serialize acoording to [ETH2.0 serialization of BLS12-381](https://github.com/ethereum/eth2.0-specs/blob/dev/specs/bls_signature.md#point-representations) when BLS12-381 is used.
- (Break backward compatibility) libmcl_dy.a is renamed to libmcl.a
  - The option SHARE_BASENAME_SUF is removed
- 2nd argument of `mclBn_init` is changed from `maxUnitSize` to `compiledTimeVar`, which must be `MCLBN_COMPILED_TIME_VAR`.
- break backward compatibility of mapToGi for BLS12. A map-to-function for BN is used.
If `MCL_USE_OLD_MAPTO_FOR_BLS12` is defined, then the old function is used, but this will be removed in the future.

# History

- 2020/Jan/25 v1.04 add new hash functions
- 2019/Dec/05 v1.03 disable to check the order in setStr
- 2019/Sep/30 v1.00 add some functions to bn.h ; [api.md](api.md).
- 2019/Sep/22 v0.99 add mclBnG1_mulVec, etc.
- 2019/Sep/08 v0.98 bugfix Ec::add(P, Q, R) when P == R
- 2019/Aug/14 v0.97 add some C api functions
- 2019/Jul/26 v0.96 improved scalar multiplication
- 2019/Jun/03 v0.95 fix a parser of 0b10 with base = 16
- 2019/Apr/29 v0.94 mclBn_setETHserialization supports [ETH2.0 serialization of BLS12-381](https://github.com/ethereum/eth2.0-specs/blob/dev/specs/bls_signature.md#point-representations)
- 2019/Apr/24 v0.93 support ios
- 2019/Mar/22 v0.92 shortcut for Ec::mul(Px, P, x) if P = 0
- 2019/Mar/21 python binding of she256 for Linux/Mac/Windows
- 2019/Mar/14 v0.91 modp supports mcl-wasm
- 2019/Mar/12 v0.90 fix Vint::setArray(x) for x == this
- 2019/Mar/07 add mclBnFr_setLittleEndianMod, mclBnFp_setLittleEndianMod
- 2019/Feb/20 LagrangeInterpolation sets out = yVec[0] if k = 1
- 2019/Jan/31 add mclBnFp_mapToG1, mclBnFp2_mapToG2
- 2019/Jan/31 fix crash on x64-CPU without AVX (thanks to mortdeus)

# Author

光成滋生 MITSUNARI Shigeo(herumi@nifty.com)
