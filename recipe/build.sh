#!/bin/bash

# workarond conda-forge/r-base-feedstock#163
export PKG_CPPFLAGS="-DHAVE_WORKING_LOG1P"

export DISABLE_AUTOBREW=1
${R} CMD INSTALL --build . ${R_ARGS}
