


# PngToPhotonMonoX

Quick and dirty utility I've made to convert PNG files to Anycubic Photon Mono X 3d printer file format. It could be useful for PCB production. Source code was ported to C++ from [Photon File Validator](https://github.com/Photonsters/PhotonFileValidator) project.

# Usage

PngToPhotonMonoX.exe <input-3840x2400.png> <output.photon>

To read data from STDIN use '-' as filename.
To write data from STDOUT use '-' as filename.

White and transparent areas of the image are treated as voids.
I insist on checking output with Photon File Validator after conversion. Use output at your own risk.

# Building

There is MSVC project for Windows and Makefile for Linux and MacOS X.
