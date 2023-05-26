![Ensemble Graphics Toolkit](docs/logo.png)

# EGT Sample Application

This is a simple EGT example which supports build offilne.
It's also able to be integrated into buildroot project.

# Compiling

First compile and install libegt to a directory.

```sh
git clone --recursive https://github.com/linux4sam/egt.git
cd egt
./autogen.sh
./configure --prefix=/opt/egt
make
make install
```

Then, configure and build this samples project.

```sh
git clone --recursive https://github.com/s887432/egt-sample.git
./autogen.sh
CXXFLAGS="-I/opt/egt/include/" \
LDFLAGS="-L/opt/egt/lib/" \
PKG_CONFIG_PATH=/opt/egt/lib/pkgconfig \
./configure
make
```

To run an example, set the LD_LIBRARY_PATH environment variable to the library.

```sh
LD_LIBRARY_PATH=/opt/egt/lib ./sample
```

## License

Released under the terms of the `Apache 2` license. See the [COPYING](COPYING)
file for more information.
