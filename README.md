# About grass

Home: https://grass.osgeo.org/

Package license: GPLv2

Recipe license: MIT

Summary: Geographic Resources Analysis Support System

# Current build status

OSX: [![TravisCI](https://travis-ci.org/csdms-stack/grass-recipe.svg?branch=master)](https://travis-ci.org/csdms-stack/grass-recipe)

# Current release info

Version: [![Anaconda-Server Badge](https://anaconda.org/csdms-stack/grass/badges/version.svg)](https://anaconda.org/csdms-stack/grass)
Downloads: [![Anaconda-Server Badge](https://anaconda.org/csdms-stack/grass/badges/downloads.svg)](https://anaconda.org/csdms-stack/grass)

# Installing grass

Installing `grass` from the `csdms-stack` channel can be achieved by adding `csdms-stack` to your channels with:

```
conda config --add channels csdms-stack
```

Once the `csdms-stack` channel has been enabled, `grass` can be installed with:

```
conda install grass
```

It is possible to list all of the versions of `grass` available on your platform with:

```
conda search grass --channel csdms-stack
```
