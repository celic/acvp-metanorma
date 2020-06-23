# ACVP Documents

Algorithms that need some work:

* DSA
* ECDSA
* EdDSA
* RSA needs a bit

Not checked

* SRTP
* SSH
* Symmetric
* TLS
* TPM
* XOF
 

Many larger sections can be broken down to individual algorithm/mode combinations rather than all grouped together. This helps with organization and to quickly find sections for modifications.

## How to use Metanorma

Metanorma is a library for writing standards. It can compile `.adoc` files into multiple common standards formats including the IETF's RFC format. 

Use the instructions here to set up Metanorma: https://www.metanorma.com/author/topics/install/

To compile an individual file, to make sure your gem versions are up to date run

```
bundle install
```

From there run 

```
metanorma compile -t ietf -x html file.adoc
```

You can switch between `-x html` and `-x txt` for different RFC output formats. 

Or you can use the `Makefile` which is available. 

To build all documents, html and txt

```
make all
```

To build a specific file

```
make specific-file.html
```

To remove all xml, txt, html, err produces files,

```
make clean
```
