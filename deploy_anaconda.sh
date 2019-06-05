#!/bin/bash
# this script uses the ANACONDA_TOKEN env var.
# to create a token:
# >>> anaconda login
# >>> anaconda auth -c -n travis --max-age 307584000 --url https://anaconda.org/USERNAME/PACKAGENAME --scopes "api:write api:read"
set -e

echo "Sourcing conda.sh"
source "$HOME"/miniconda/etc/profile.d/conda.sh

echo "Deploying to Anaconda.org..."
anaconda -t $ANACONDA_TOKEN upload conda-bld/**/crc32c-*.tar.bz2

echo "Successfully deployed to Anaconda.org."
exit 0