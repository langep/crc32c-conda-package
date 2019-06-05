# Conda Package Build Instructions

## Requirements

- `Anaconda` or `Miniconda`

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
