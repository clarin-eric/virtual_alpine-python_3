#!/bin/sh -ex

apk --verbose --progress update --purge # --update-cache
apk --verbose --progress upgrade --latest # --update-cache --available
apk --verbose --progress add --upgrade 'python3=3.4.3-r2' 'ca-certificates'
pip3 --no-cache-dir --isolated install --upgrade 'setuptools' 'pip'
# apk --verbose cache sync