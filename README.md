[![Build Status](https://travis-ci.org/langep/crc32c-conda-package.svg?branch=master)](https://travis-ci.org/langep/crc32c-conda-package)
# Conda Package Build Instructions

## Requirements

- `Anaconda` or `Miniconda`

## Automated builds

Travis CI is used to automate the builds for osx and linux and Python 2.7, 3.6 and 3.7.
Each commit is build but only tags are deployed to Anaconda.

## Manual deploy steps

```bash
conda env create --file conda_build_env.yaml              # create the build env
conda activate crc32c-conda-package                      # activate the env
conda build crc32c                                       # build
conda install -c file://${CONDA_PREFIX}/conda-bld/ crc32c # install locally
conda list                                               # check it is installed
# run any kind of tests you want
anaconda login                                           # login to anaconda
anaconda upload <path-to-conda-package.tar.bz2>          # upload package
```
