# Pharo Arrow

## Installation

### Pharo

```sh
Metacello new
	baseline: 'PharoArrow';
	repository: 'github://badetitou/PharoArrow:main/src';
	load.
```

This project requires native libraries.
You can look at the [Apache Arrow project](https://arrow.apache.org/install/) for all installation options.

Or you can more simply do the following:

### Mac

```sh
brew install apache-arrow apache-arrow-glib
```

### Linux

You should install:
- `libarrow-dev`
- `libarrow-glib-dev`
- `libparquet-dev`
- `libparquet-glib-dev`

For example on Ubuntu that would be: `sudo apt install libXYZ`

And you may have to configure how to retreive these libraries in Pharo (the name of the libraies may be different on different linuses):
```st
PharoArrowLibrary >> unixLibraryName
	^'libarrow-glib'
	
PharoGLibLibrary >> unixLibraryName
	^'libglib-2.0'

PharoParquetLibrary >> unixLibraryName
	^'libparquet-glib'
```


### Window

To be investigated
