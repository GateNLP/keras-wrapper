#!/bin/bash

ROOTDIR="$1"
shift

mypython=${KERAS_WRAPPER_PYTHON:-python}

pushd "$ROOTDIR" >/dev/null

echo 1>&2 ${mypython} "${ROOTDIR}/python/kerasApply.py"  $@
${mypython} "${ROOTDIR}/python/kerasApply.py" $@
popd >/dev/null
