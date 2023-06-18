#!/bin/bash

# workarounds for:
# 1) conda-forge/r-base-feedstock#163
# 2) old osx sdk
export PKG_CPPFLAGS="-DHAVE_WORKING_LOG1P -D_LIBCPP_DISABLE_AVAILABILITY"

export DISABLE_AUTOBREW=1
${R} CMD INSTALL --build . ${R_ARGS}
