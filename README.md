# ACVP
The [Automated Cryptographic Validation Protocol](./draft-gold-acvp-protocol-spec.html) (ACVP) is a protocol currently under development to support a new National Voluntary Laboratory Accreditation Program (NVLAP) testing scope at the [National Institute of Standards and Technology (NIST)](https://www.nist.gov).  

All current information about ACVP may be found within this Github project. View the documents at https://usnistgov.github.io/ACVP/.

# Jump to
* [Background](#background)
* [How to use Metanorma](#how-to-use-metanorma)
* [Objective](#objective)
* [Project Goals](#project-goals)
* [Status](#status)
* [Supported Algorithms](#supported-algorithms)
  * [Block Cipher Modes](#block-cipher-modes)
  * [Secure Hash](#secure-hash)
  * [XOFs](#xofs)
  * [Message Authentication](#message-authentication)
  * [DRBG](#drbg)
  * [Digital Signature](#digital-signature)
  * [Key Agreement](#key-agreement)
  * [KDFs](#kdfs)
  * [SafePrimes](#safe-primes)
* [Accessing the demo server](#accessing-the-demo-server)
* [Contribution guidelines](contribution-guidelines)
* [Related projects](#related-projects)
* [Licensing terms](#licensing-terms)

# Background
The rapid development of cryptographic technology over the last two decades and its adoption in many different technology domains has resulted in a sharp increase in the number and complexity of approved algorithms. The volume of cryptographic algorithm validations has outstripped the available human resources available to test, report, and validate results. The plethora of different algorithms has created a dire need for consistent requesting and reporting of test data and results. We also live in times of unprecedented levels of threats and exploits that require frequent product updates to fix defects and remove security vulnerabilities, which in turn requires much faster turnaround of validation updates than what the existing validation model allows. See the NIST [Automated Cryptographic Validation Testing project](https://csrc.nist.gov/Projects/Automated-Cryptographic-Validation-Testing) for broader context and information. 

Requirements documents for the existing Cryptrographic Algorithm Validation Program (CAVP) and the 17CAV scope can be found at https://www.nist.gov/national-voluntary-laboratory-accreditation-program-nvlap/requirements-documents-5. The requirements documents for the ACVP scope will likely be found on the same page once they have been finalized and published.
 
General information about CAVP can be found at https://csrc.nist.gov/Projects/Cryptographic-Algorithm-Validation-Program with the CAVP management manual found at https://csrc.nist.gov/CSRC/media/Projects/Cryptographic-Algorithm-Validation-Program/documents/CAVPMM.pdf and the FAQ at https://csrc.nist.gov/CSRC/media/Projects/Cryptographic-Algorithm-Validation-Program/documents/CAVPFAQ.pdf.

# How to use Metanorma

Metanorma is a library for writing standards. It can compile `.adoc` files into multiple common standards formats including the IETF's RFC format. 

Use the instructions here to set up Metanorma: https://www.metanorma.com/author/topics/install/

To compile an individual file, to make sure your gem versions are up to date run

```
gem install metanorma-cli
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

# Objective
The objective of this project is to define a protocol allowing independent implementation by all vendors participating in the NIST cryptographic validation programs ([CAVP](https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program#) and [CMVP](https://csrc.nist.gov/projects/cryptographic-module-validation-program#)) for accelerated test data generation and requisition, reporting of test results, and validation of NIST-approved cryptographic algorithms (see FIPS 140-2 [Annex A](https://csrc.nist.gov/CSRC/media/Publications/fips/140/2/final/documents/fips1402annexa.pdf), [Annex C](https://csrc.nist.gov/CSRC/media/Publications/fips/140/2/final/documents/fips1402annexc.pdf) and [Annex D](https://csrc.nist.gov/CSRC/media/Publications/fips/140/2/final/documents/fips1402annexd.pdf)).

# Project Goals
The development of an Automated Cryptographic Validation Protocol (ACVP) that enables the generation and 
validation of standardized algorithm test evidence to facilitate the [modernization](https://csrc.nist.gov/Projects/Automated-Cryptographic-Validation-Testing) of [CAVP](https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program#) and [CMVP](https://csrc.nist.gov/projects/cryptographic-module-validation-program).

# Status
The demo server (demo.acvts.nist.gov) supports ACVP version 1.0. All endpoints defined in the [protocol specification](./draft-gold-acvp-protocol-spec.html) are available.

The demo server allows validation of the following algorithms (a superset of the algorithms available through the CAVS tool). NOT ALL OF THE ALGORITHMS AVAILABLE ON THE DEMO SERVER ARE NIST-APPROVED ALGORITHMS. The prod server supports a subset of the listed algorithms.

## Supported Algorithms

### Block Cipher Modes
* [AES-CBC](./draft-gold-acvp-sub-block-ciph.txt) - [HTML](./draft-gold-acvp-sub-block-ciph.html) 
* [AES-CFB1](./draft-gold-acvp-sub-block-ciph.txt) - [HTML](./draft-gold-acvp-sub-block-ciph.html)
* [AES-CFB8](./draft-gold-acvp-sub-block-ciph.txt) - [HTML](./draft-gold-acvp-sub-block-ciph.html)
* [AES-CFB128](./draft-gold-acvp-sub-block-ciph.txt) - [HTML](./draft-gold-acvp-sub-block-ciph.html)
* [AES-CTR](./draft-gold-acvp-sub-block-ciph.txt) - [HTML](./draft-gold-acvp-sub-block-ciph.html)
* [AES-ECB](./draft-gold-acvp-sub-block-ciph.txt) - [HTML](./draft-gold-acvp-sub-block-ciph.html)
* [AES-GCM](./draft-gold-acvp-sub-block-ciph.txt) - [HTML](./draft-gold-acvp-sub-block-ciph.html)
* [AES-GCM-SIV](./draft-gold-acvp-sub-block-ciph.txt) - [HTML](./draft-gold-acvp-sub-block-ciph.html) - DEMO only
* [AES-KW](./draft-gold-acvp-sub-block-ciph.txt) - [HTML](./draft-gold-acvp-sub-block-ciph.html)
* [AES-KWP](./draft-gold-acvp-sub-block-ciph.txt) - [HTML](./draft-gold-acvp-sub-block-ciph.html)
* [AES-OFB](./draft-gold-acvp-sub-block-ciph.txt) - [HTML](./draft-gold-acvp-sub-block-ciph.html)
* [AES-XPN](./draft-gold-acvp-sub-block-ciph.txt) - [HTML](./draft-gold-acvp-sub-block-ciph.html)
* [AES-XTS](./draft-gold-acvp-sub-block-ciph.txt) - [HTML](./draft-gold-acvp-sub-block-ciph.html)
* [AES-FF1](./draft-gold-acvp-sub-block-ciph.txt) - [HTML](./draft-gold-acvp-sub-block-ciph.html)
* [AES-FF3-1](./draft-gold-acvp-sub-block-ciph.txt) - [HTML](./draft-gold-acvp-sub-block-ciph.html) - DEMO only
* [TDES-CBC](./draft-gold-acvp-sub-block-ciph.txt) - [HTML](./draft-gold-acvp-sub-block-ciph.html)
* [TDES-CBCI](./draft-gold-acvp-sub-block-ciph.txt) - [HTML](./draft-gold-acvp-sub-block-ciph.html)
* [TDES-CFBP1](./draft-gold-acvp-sub-block-ciph.txt) - [HTML](./draft-gold-acvp-sub-block-ciph.html)
* [TDES-CFBP8](./draft-gold-acvp-sub-block-ciph.txt) - [HTML](./draft-gold-acvp-sub-block-ciph.html)
* [TDES-CFBP64](./draft-gold-acvp-sub-block-ciph.txt) - [HTML](./draft-gold-acvp-sub-block-ciph.html)
* [TDES-CTR](./draft-gold-acvp-sub-block-ciph.txt) - [HTML](./draft-gold-acvp-sub-block-ciph.html) 
* [TDES-ECB](./draft-gold-acvp-sub-block-ciph.txt) - [HTML](./draft-gold-acvp-sub-block-ciph.html)
* [TDES-KW](./draft-gold-acvp-sub-block-ciph.txt) - [HTML](./draft-gold-acvp-sub-block-ciph.html)
* [TDES-OFB](./draft-gold-acvp-sub-block-ciph.txt) - [HTML](./draft-gold-acvp-sub-block-ciph.html)
* [TDES-OFBI](./draft-gold-acvp-sub-block-ciph.txt) - [HTML](./draft-gold-acvp-sub-block-ciph.html)

### Secure Hash
* [SHA-1](./draft-gold-acvp-sub-sha.txt) - [HTML](./draft-gold-acvp-sub-sha.html)
* [SHA-224](./draft-gold-acvp-sub-sha.txt) - [HTML](./draft-gold-acvp-sub-sha.html)
* [SHA-256](./draft-gold-acvp-sub-sha.txt) - [HTML](./draft-gold-acvp-sub-sha.html)
* [SHA-384](./draft-gold-acvp-sub-sha.txt) - [HTML](./draft-gold-acvp-sub-sha.html)
* [SHA-512](./draft-gold-acvp-sub-sha.txt) - [HTML](./draft-gold-acvp-sub-sha.html)
* [SHA-512/224](./draft-gold-acvp-sub-sha.txt) - [HTML](./draft-gold-acvp-sub-sha.html)
* [SHA-512/256](./draft-gold-acvp-sub-sha.txt) - [HTML](./draft-gold-acvp-sub-sha.html)
* [SHA3-224](./draft-gold-acvp-sub-sha3.txt) - [HTML](./draft-gold-acvp-sub-sha3.html)
* [SHA3-256](./draft-gold-acvp-sub-sha3.txt) - [HTML](./draft-gold-acvp-sub-sha3.html)
* [SHA3-384](./draft-gold-acvp-sub-sha3.txt) - [HTML](./draft-gold-acvp-sub-sha3.html)
* [SHA3-512](./draft-gold-acvp-sub-sha3.txt) - [HTML](./draft-gold-acvp-sub-sha3.html)
* [SHAKE-128](./draft-gold-acvp-sub-sha3.txt) - [HTML](./draft-gold-acvp-sub-sha3.html)
* [SHAKE-256](./draft-gold-acvp-sub-sha3.txt) - [HTML](./draft-gold-acvp-sub-sha3.html)

### XOFs
* [cSHAKE-128](./draft-celi-acvp-xof-00.txt) - [HTML](./draft-celi-acvp-xof-00.html)
* [cSHAKE-256](./draft-celi-acvp-xof-00.txt) - [HTML](./draft-celi-acvp-xof-00.html)
* [KMAC-128](./draft-celi-acvp-xof-00.txt) - [HTML](./draft-celi-acvp-xof-00.html)
* [KMAC-256](./draft-celi-acvp-xof-00.txt) - [HTML](./draft-celi-acvp-xof-00.html)
* [ParallelHash-128](./draft-celi-acvp-xof-00.txt) - [HTML](./draft-celi-acvp-xof-00.html)
* [ParallelHash-256](./draft-celi-acvp-xof-00.txt) - [HTML](./draft-celi-acvp-xof-00.html)
* [TupleHash-128](./draft-celi-acvp-xof-00.txt) - [HTML](./draft-celi-acvp-xof-00.html)
* [TupleHash-256](./draft-celi-acvp-xof-00.txt) - [HTML](./draft-celi-acvp-xof-00.html)

### Message Authentication
* [AES-GMAC](./draft-gold-acvp-sub-block-ciph.txt) - [HTML](./draft-gold-acvp-sub-block-ciph.html)
* [AES-CCM](./draft-gold-acvp-sub-block-ciph.txt) - [HTML](./draft-gold-acvp-sub-block-ciph.html)
* [CMAC-AES](./draft-gold-acvp-sub-mac.txt) - [HTML](./draft-gold-acvp-sub-mac.html)
* [CMAC-TDES](./draft-gold-acvp-sub-mac.txt) - [HTML](./draft-gold-acvp-sub-mac.html)
* [HMAC-SHA-1](./draft-gold-acvp-sub-mac.txt) - [HTML](./draft-gold-acvp-sub-mac.html)
* [HMAC-SHA2-224](./draft-gold-acvp-sub-mac.txt) - [HTML](./draft-gold-acvp-sub-mac.html)
* [HMAC-SHA2-256](./draft-gold-acvp-sub-mac.txt) - [HTML](./draft-gold-acvp-sub-mac.html)
* [HMAC-SHA2-384](./draft-gold-acvp-sub-mac.txt) - [HTML](./draft-gold-acvp-sub-mac.html)
* [HMAC-SHA2-512](./draft-gold-acvp-sub-mac.txt) - [HTML](./draft-gold-acvp-sub-mac.html)
* [HMAC-SHA2-512/224](./draft-gold-acvp-sub-mac.txt) - [HTML](./draft-gold-acvp-sub-mac.html)
* [HMAC-SHA2-512/256](./draft-gold-acvp-sub-mac.txt) - [HTML](./draft-gold-acvp-sub-mac.html)
* [HMAC-SHA3-224](./draft-gold-acvp-sub-mac.txt) - [HTML](./draft-gold-acvp-sub-mac.html)
* [HMAC-SHA3-256](./draft-gold-acvp-sub-mac.txt) - [HTML](./draft-gold-acvp-sub-mac.html)
* [HMAC-SHA3-384](./draft-gold-acvp-sub-mac.txt) - [HTML](./draft-gold-acvp-sub-mac.html)
* [HMAC-SHA3-512](./draft-gold-acvp-sub-mac.txt) - [HTML](./draft-gold-acvp-sub-mac.html)

### DRBG
* [ctrDRBG-AES-128](./draft-gold-acvp-sub-drbg.txt) - [HTML](./draft-gold-acvp-sub-drbg.html)
* [ctrDRBG-AES-192](./draft-gold-acvp-sub-drbg.txt) - [HTML](./draft-gold-acvp-sub-drbg.html)
* [ctrDRBG-AES-256](./draft-gold-acvp-sub-drbg.txt) - [HTML](./draft-gold-acvp-sub-drbg.html)
* [ctrDRBG-TDES](./draft-gold-acvp-sub-drbg.txt) - [HTML](./draft-gold-acvp-sub-drbg.html)
* [HASH DRBG](./draft-gold-acvp-sub-drbg.txt) - [HTML](./draft-gold-acvp-sub-drbg.html)
* [HMAC DRBG](./draft-gold-acvp-sub-drbg.txt) - [HTML](./draft-gold-acvp-sub-drbg.html)

### Digital Signature
* [RSA mode: keyGen](./draft-gold-acvp-sub-rsa.txt) - [HTML](./draft-gold-acvp-sub-rsa.html)
* [RSA mode: sigGen](./draft-gold-acvp-sub-rsa.txt) - [HTML](./draft-gold-acvp-sub-rsa.html)
* [RSA mode: sigVer](./draft-gold-acvp-sub-rsa.txt) - [HTML](./draft-gold-acvp-sub-rsa.html)
* [RSA mode: signatureComponent](./draft-gold-acvp-sub-rsa.txt) - [HTML](./draft-gold-acvp-sub-rsa.html)
* [RSA mode: decryptionComponent](./draft-gold-acvp-sub-rsa.txt) - [HTML](./draft-gold-acvp-sub-rsa.html)
* [RSA mode: legacySigVer](./draft-gold-acvp-sub-rsa.txt) - [HTML](./draft-gold-acvp-sub-rsa.html)
* [ECDSA mode: sigGenComponent](./draft-gold-acvp-sub-ecdsa.txt) - [HTML](./draft-gold-acvp-sub-ecdsa.html)
* [ECDSA mode: keyGen](./draft-gold-acvp-sub-ecdsa.txt) - [HTML](./draft-gold-acvp-sub-ecdsa.html)
* [ECDSA mode: keyVer](./draft-gold-acvp-sub-ecdsa.txt) - [HTML](./draft-gold-acvp-sub-ecdsa.html)
* [ECDSA mode: sigGen](./draft-gold-acvp-sub-ecdsa.txt) - [HTML](./draft-gold-acvp-sub-ecdsa.html) 
* [ECDSA mode: sigVer](./draft-gold-acvp-sub-ecdsa.txt) - [HTML](./draft-gold-acvp-sub-ecdsa.html)
* [DSA mode: keyGen](./draft-gold-acvp-sub-dsa.txt) - [HTML](./draft-gold-acvp-sub-dsa.html)
* [DSA mode: sigVer](./draft-gold-acvp-sub-dsa.txt) - [HTML](./draft-gold-acvp-sub-dsa.html)
* [DSA mode: sigGen](./draft-gold-acvp-sub-dsa.txt) - [HTML](./draft-gold-acvp-sub-dsa.html)
* [DSA mode: pqgGen](./draft-gold-acvp-sub-dsa.txt) - [HTML](./draft-gold-acvp-sub-dsa.html)
* [DSA mode: pqgVer](./draft-gold-acvp-sub-dsa.txt) - [HTML](./draft-gold-acvp-sub-dsa.html)
* [EDDSA mode: keyGen](./draft-gold-acvp-sub-eddsa.txt) - [HTML](./draft-gold-acvp-sub-eddsa.html) - DEMO only
* [EDDSA mode: keyVer](./draft-gold-acvp-sub-eddsa.txt) - [HTML](./draft-gold-acvp-sub-eddsa.html) - DEMO only
* [EDDSA mode: sigGen](./draft-gold-acvp-sub-eddsa.txt) - [HTML](./draft-gold-acvp-sub-eddsa.html) - DEMO only
* [EDDSA mode: sigVer](./draft-gold-acvp-sub-eddsa.txt) - [HTML](./draft-gold-acvp-sub-eddsa.html) - DEMO only

### Key Agreement
* [KAS ECC ephemeralUnified](./draft-gold-acvp-sub-kas-ecc.txt) - [HTML](./draft-gold-acvp-sub-kas-ecc.html)
* [KAS ECC fullMqv](./draft-gold-acvp-sub-kas-ecc.txt) - [HTML](./draft-gold-acvp-sub-kas-ecc.html)
* [KAS ECC fullUnified](./draft-gold-acvp-sub-kas-ecc.txt) - [HTML](./draft-gold-acvp-sub-kas-ecc.html)
* [KAS ECC onePassDh](./draft-gold-acvp-sub-kas-ecc.txt) - [HTML](./draft-gold-acvp-sub-kas-ecc.html)
* [KAS ECC onePassMqv](./draft-gold-acvp-sub-kas-ecc.txt) - [HTML](./draft-gold-acvp-sub-kas-ecc.html)
* [KAS ECC OnePassUnified](./draft-gold-acvp-sub-kas-ecc.txt) - [HTML](./draft-gold-acvp-sub-kas-ecc.html)
* [KAS ECC staticUnified](./draft-gold-acvp-sub-kas-ecc.txt) - [HTML](./draft-gold-acvp-sub-kas-ecc.html)
* [KAS ECC CDH-Component](./draft-gold-acvp-sub-kas-ecc.txt) - [HTML](./draft-gold-acvp-sub-kas-ecc.html)
* [KAS FFC dhHybrid1](./draft-gold-acvp-sub-kas-ffc.txt) - [HTML](./draft-gold-acvp-sub-kas-ffc.html)
* [KAS FFC mqv2](./draft-gold-acvp-sub-kas-ffc.txt) - [HTML](./draft-gold-acvp-sub-kas-ffc.html) 
* [KAS FFC dhEphem](./draft-gold-acvp-sub-kas-ffc.txt) - [HTML](./draft-gold-acvp-sub-kas-ffc.html)
* [KAS FFC dhHybridOneFlow](./draft-gold-acvp-sub-kas-ffc.txt) - [HTML](./draft-gold-acvp-sub-kas-ffc.html)
* [KAS FFC mqv1](./draft-gold-acvp-sub-kas-ffc.txt) - [HTML](./draft-gold-acvp-sub-kas-ffc.html)
* [KAS FFC dhOneFlow](./draft-gold-acvp-sub-kas-ffc.txt) - [HTML](./draft-gold-acvp-sub-kas-ffc.html)
* [KAS FFC dhStatic](./draft-gold-acvp-sub-kas-ffc.txt) - [HTML](./draft-gold-acvp-sub-kas-ffc.html)
* [KAS ECC ephemeralUnified Sp800-56Ar3](./draft-gold-acvp-sub-kas-ecc-Sp800-56Ar3.txt) - [HTML](./draft-gold-acvp-sub-kas-ecc-Sp800-56Ar3.html) - DEMO only
* [KAS ECC fullMqv Sp800-56Ar3](./draft-gold-acvp-sub-kas-ecc-Sp800-56Ar3.txt) - [HTML](./draft-gold-acvp-sub-kas-ecc-Sp800-56Ar3.html) - DEMO only
* [KAS ECC fullUnified Sp800-56Ar3](./draft-gold-acvp-sub-kas-ecc-Sp800-56Ar3.txt) - [HTML](./draft-gold-acvp-sub-kas-ecc-Sp800-56Ar3.html) - DEMO only
* [KAS ECC onePassDh Sp800-56Ar3](./draft-gold-acvp-sub-kas-ecc-Sp800-56Ar3.txt) - [HTML](./draft-gold-acvp-sub-kas-ecc-Sp800-56Ar3.html) - DEMO only
* [KAS ECC onePassMqv Sp800-56Ar3](./draft-gold-acvp-sub-kas-ecc-Sp800-56Ar3.txt) - [HTML](./draft-gold-acvp-sub-kas-ecc-Sp800-56Ar3.html) - DEMO only
* [KAS ECC OnePassUnified Sp800-56Ar3](./draft-gold-acvp-sub-kas-ecc-Sp800-56Ar3.txt) - [HTML](./draft-gold-acvp-sub-kas-ecc-Sp800-56Ar3.html) - DEMO only
* [KAS ECC staticUnified Sp800-56Ar3](./draft-gold-acvp-sub-kas-ecc-Sp800-56Ar3.txt) - [HTML](./draft-gold-acvp-sub-kas-ecc-Sp800-56Ar3.html) - DEMO only
* [KAS FFC dhHybrid1 Sp800-56Ar3](./draft-gold-acvp-sub-kas-ffc-Sp800-56Ar3.txt) - [HTML](./draft-gold-acvp-sub-kas-ffc-Sp800-56Ar3.html) - DEMO only
* [KAS FFC mqv2 Sp800-56Ar3](./draft-gold-acvp-sub-kas-ffc-Sp800-56Ar3.txt) - [HTML](./draft-gold-acvp-sub-kas-ffc-Sp800-56Ar3.html)  - DEMO only
* [KAS FFC dhEphem Sp800-56Ar3](./draft-gold-acvp-sub-kas-ffc-Sp800-56Ar3.txt) - [HTML](./draft-gold-acvp-sub-kas-ffc-Sp800-56Ar3.html) - DEMO only
* [KAS FFC dhHybridOneFlow Sp800-56Ar3](./draft-gold-acvp-sub-kas-ffc-Sp800-56Ar3.txt) - [HTML](./draft-gold-acvp-sub-kas-ffc-Sp800-56Ar3.html) - DEMO only
* [KAS FFC mqv1 Sp800-56Ar3](./draft-gold-acvp-sub-kas-ffc-Sp800-56Ar3.txt) - [HTML](./draft-gold-acvp-sub-kas-ffc-Sp800-56Ar3.html) - DEMO only
* [KAS FFC dhOneFlow Sp800-56Ar3](./draft-gold-acvp-sub-kas-ffc-Sp800-56Ar3.txt) - [HTML](./draft-gold-acvp-sub-kas-ffc-Sp800-56Ar3.html) - DEMO only
* [KAS FFC dhStatic Sp800-56Ar3](./draft-gold-acvp-sub-kas-ffc-Sp800-56Ar3.txt) - [HTML](./draft-gold-acvp-sub-kas-ffc-Sp800-56Ar3.html) - DEMO only
* [KAS IFC KAS1-basic](./acvp_sub_kas_ifc.txt) - [HTML](./acvp_sub_kas_ifc.html) - DEMO only
* [KAS IFC KAS1-Party_V-confirmation](./acvp_sub_kas_ifc.txt) - [HTML](./acvp_sub_kas_ifc.html) - DEMO only
* [KAS IFC KAS2-basic](./acvp_sub_kas_ifc.txt) - [HTML](./acvp_sub_kas_ifc.html) - DEMO only
* [KAS IFC KAS2-bilateral-confirmation](./acvp_sub_kas_ifc.txt) - [HTML](./acvp_sub_kas_ifc.html) - DEMO only
* [KAS IFC KAS2-Party_U-confirmation](./acvp_sub_kas_ifc.txt) - [HTML](./acvp_sub_kas_ifc.html) - DEMO only
* [KAS IFC KAS2-Party_V-confirmation](./acvp_sub_kas_ifc.txt) - [HTML](./acvp_sub_kas_ifc.html) - DEMO only
* [KTS IFC KTS-OAEP-basic](./acvp_sub_kas_ifc.txt) - [HTML](./acvp_sub_kas_ifc.html) - DEMO only
* [KTS IFC KTS-OAEP-Party_V-confirmation](./acvp_sub_kas_ifc.txt) - [HTML](./acvp_sub_kas_ifc.html) - DEMO only
* [KAS KDF OneStep Sp800-56Cr1](./draft-gold-acvp-sub-kas-kdf-onestep-Sp800-56Cr1.txt) - [HTML](./draft-gold-acvp-sub-kas-kdf-onestep-Sp800-56Cr1.html) - DEMO only
* [KAS KDF TwoStep Sp800-56Cr1](./draft-gold-acvp-sub-kas-kdf-twostep-Sp800-56Cr1.txt) - [HTML](./draft-gold-acvp-sub-kas-kdf-twostep-Sp800-56Cr1.html) - DEMO only
* [KAS SSC ECC ephemeralUnified Sp800-56Ar3](./draft-gold-acvp-sub-kas-ssc-ecc.txt) - [HTML](./draft-gold-acvp-sub-kas-ssc-ecc.html) - DEMO only
* [KAS SSC ECC fullMqv Sp800-56Ar3](./draft-gold-acvp-sub-kas-ssc-ecc.txt) - [HTML](./draft-gold-acvp-sub-kas-ssc-ecc.html) - DEMO only
* [KAS SSC ECC fullUnified Sp800-56Ar3](./draft-gold-acvp-sub-kas-ssc-ecc.txt) - [HTML](./draft-gold-acvp-sub-kas-ssc-ecc.html) - DEMO only
* [KAS SSC ECC onePassDh Sp800-56Ar3](./draft-gold-acvp-sub-kas-ssc-ecc.txt) - [HTML](./draft-gold-acvp-sub-kas-ssc-ecc.html) - DEMO only
* [KAS SSC ECC onePassMqv Sp800-56Ar3](./draft-gold-acvp-sub-kas-ssc-ecc.txt) - [HTML](./draft-gold-acvp-sub-kas-ssc-ecc.html) - DEMO only
* [KAS SSC ECC OnePassUnified Sp800-56Ar3](./draft-gold-acvp-sub-kas-ssc-ecc.txt) - [HTML](./draft-gold-acvp-sub-kas-ssc-ecc.html) - DEMO only
* [KAS SSC ECC staticUnified Sp800-56Ar3](./draft-gold-acvp-sub-kas-ssc-ecc.txt) - [HTML](./draft-gold-acvp-sub-kas-ssc-ecc.html) - DEMO only
* [KAS SSC FFC dhHybrid1 Sp800-56Ar3](./draft-gold-acvp-sub-kas-ssc-ffc.txt) - [HTML](./draft-gold-acvp-sub-kas-ssc-ffc.html) - DEMO only
* [KAS SSC FFC mqv2 Sp800-56Ar3](./draft-gold-acvp-sub-kas-ssc-ffc.txt) - [HTML](./draft-gold-acvp-sub-kas-ssc-ffc.html)  - DEMO only
* [KAS SSC FFC dhEphem Sp800-56Ar3](./draft-gold-acvp-sub-kas-ssc-ffc.txt) - [HTML](./draft-gold-acvp-sub-kas-ssc-ffc.html) - DEMO only
* [KAS SSC FFC dhHybridOneFlow Sp800-56Ar3](./draft-gold-acvp-sub-kas-ssc-ffc.txt) - [HTML](./draft-gold-acvp-sub-kas-ssc-ffc.html) - DEMO only
* [KAS SSC FFC mqv1 Sp800-56Ar3](./draft-gold-acvp-sub-kas-ssc-ffc.txt) - [HTML](./draft-gold-acvp-sub-kas-ssc-ffc.html) - DEMO only
* [KAS SSC FFC dhOneFlow Sp800-56Ar3](./draft-gold-acvp-sub-kas-ssc-ffc.txt) - [HTML](./draft-gold-acvp-sub-kas-ssc-ffc.html) - DEMO only
* [KAS SSC FFC dhStatic Sp800-56Ar3](./draft-gold-acvp-sub-kas-ssc-ffc.txt) - [HTML](./draft-gold-acvp-sub-kas-ssc-ffc.html) - DEMO only

### KDFs
* [Counter KDF](./draft-gold-acvp-sub-kdf108.txt) - [HTML](./draft-gold-acvp-sub-kdf108.html)
* [Feedback KDF](./draft-gold-acvp-sub-kdf108.txt) - [HTML](./draft-gold-acvp-sub-kdf108.html)
* [Double Pipeline Iterator KDF](./draft-gold-acvp-sub-kdf108.txt) - [HTML](./draft-gold-acvp-sub-kdf108.html)
* [IKEv1](./draft-gold-acvp-sub-kdf135-ikev1.txt) - [HTML](./draft-gold-acvp-sub-kdf135-ikev1.html)
* [IKEv2](./draft-gold-acvp-sub-kdf135-ikev2.txt) - [HTML](./draft-gold-acvp-sub-kdf135-ikev2.html) 
* [SNMP](./draft-gold-acvp-sub-kdf135-snmp.txt) - [HTML](./draft-gold-acvp-sub-kdf135-snmp.html)
* [SRTP](./draft-gold-acvp-sub-kdf135-srtp.txt) - [HTML](./draft-gold-acvp-sub-kdf135-srtp.html)
* [SSH](./acvp_sub_kdf135_ssh.txt) - [HTML](./acvp_sub_kdf135_ssh.html)
* [TLS](./draft-gold-acvp-sub-kdf135-tls.txt) - [HTML](./draft-gold-acvp-sub-kdf135-tls.html)
* [TPM](./acvp_sub_kdf135_tpm.txt) - [HTML](./acvp_sub_kdf135_tpm.html)
* [ANSX9.63](./draft-gold-acvp-sub-kdf135-x963.txt) - [HTML](./draft-gold-acvp-sub-kdf135-x963.html)
* [ANSX9.42](./draft-gold-acvp-sub-kdf135-x942.txt) - [HTML](./draft-gold-acvp-sub-kdf135-x942.html)
* [PBKDF](./draft-gold-acvp-sub-pbkdf.txt) - [HTML](./draft-gold-acvp-sub-pbkdf.html)

### Safe Primes
* [SafePrimes KeyGen](./draft-gold-acvp-sub-safe-primes.txt) - [HTML](./draft-gold-acvp-sub-safe-primes.html) - DEMO only
* [SafePrimes KeyVer](./draft-gold-acvp-sub-safe-primes.txt) - [HTML](./draft-gold-acvp-sub-safe-primes.html) - DEMO only

The prod server supports all of the above except for the EdDSA variants, AES-FF3-1, KAS/KTS-IFC, and AES-GCM-SIV. Some of these algorithms have NIST SP800 series drafts in progress and will be available on the prod server when the draft becomes a standard. 

## Current 1.0 Support
Please check the [protocol specification](./draft-gold-acvp-protocol-spec.html) for details on how to access the available resources. 

# Accessing the demo server

To access the demo server one needs a TLS credential **and** a one-time password (OTP). The [protocol specification](./draft-gold-acvp-protocol-spec.html) and other development information are available in this repository. You may want to use the companion [ACVP client](https://github.com/cisco/libacvp) to jump-start your work. 

To set expectations, since this is a demo system, it will be in a state of flux and any all data on the system is considered temporary and may be reset to accommodate development of the Automated Cryptographic Validation Protocol (ACVP) service. We will try to keep the demo service relatively stable, but we plan to update it as we continue to add new algorithms and capabilities.

## Obtaining TLS credentials

To access the [demo environment](https://demo.acvts.nist.gov/acvp/home) you will need to send your CSR to us. Please use a 2048-bit RSA key pair and sign using at least a SHA-256 hash. Please send a request to acvts-demo@nist.gov with 'CSR REQUEST FOR ACCESS TO DEMO' in the subject line. You will receive instructions for how to upload your CSR. 

You are expected to protect the key pair from unauthorized use and to notify NIST in the event the keypair becomes compromised. Also, since we do not have a formal login page the following notice applies when accessing the ACVP system:

```
“***WARNING***WARNING***WARNING
You are accessing a U.S. Government information system, which includes: 1) this computer, 
2) this computer network, 3) all computers connected to this network, and 4) all devices 
and storage media attached to this network or to a computer on this network. You understand 
and consent to the following: you may access this information system for authorized use 
only; you have no reasonable expectation of privacy regarding any communication of data 
transiting or stored on this information system; at any time and for any lawful Government 
purpose, the Government may monitor, intercept, and search and seize any communication or 
data transiting or stored on this information system; and any communications or data 
transiting or stored on this information system may be disclosed or used for any lawful 
Government purpose.
***WARNING***WARNING***WARNING”
```

## Configuring and using One-Time-Passwords (OTP)

TOTP has been configured on all servers. See details [here](https://github.com/usnistgov/ACVP/wiki#second-factor-authentication-and-authorization-schema-for-accessing-and-working-with-the-nist-automated-cryptographic-validation-services). 

# Contribution guidelines

If you want to contribute, please follow the simple rules below and send us pull requests. 

- See [Metanorma](#how-to-use-metanorma) for installation instructions
- Documents are templated out and organized into folders, find and edit the appropriate document and build the HTML or TXT file to ensure the changes are correct
- Create a Pull Request with the updated ADOC files. GitHub Actions will verify the files can compile. 
- Once approved, GitHub Actions will rebuild the `gh-pages` branch to be reflected on https://usnistgov.github.io/ACVP

If you would like to talk to our developers, you may want to send email to our mailing list algotest@list.nist.gov. You may also report bugs or request new tests.


# Related projects
- [Automated Cryptographic Validation Testing](https://csrc.nist.gov/Projects/Automated-Cryptographic-Validation-Testing)
- [Cisco libacvp](https://github.com/cisco/libacvp)
- [Google Project Wycheproof](https://github.com/google/wycheproof)
- [HACL*, a formally verified cryptographic library written in F*](https://github.com/mitls/hacl-star)
- [Automated Module Validation Protocol](https://github.com/usnistgov/AMVP)
- [ACVP Proxy](https://github.com/smuellerDD/acvpproxy)
- [ACVP Parser](https://github.com/smuellerDD/acvpparser)

# Licensing terms

This data was developed by employees of the National Institute of Standards and Technology (NIST), an agency of the Federal Government, in collaboration with third-party contributers. Pursuant to title 17 United States Code Section 105, works of NIST employees are not subject to copyright protection in the United States and are considered to be in the public domain. The data is provided by NIST as a public service and is expressly provided "AS IS." NIST MAKES NO WARRANTY OF ANY KIND, EXPRESS, IMPLIED OR STATUTORY, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTY OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, NON-INFRINGEMENT AND DATA ACCURACY. NIST does not warrant or make any representations regarding the use of the data or the results thereof, including but not limited to the correctness, accuracy, reliability or usefulness of the data. NIST SHALL NOT BE LIABLE AND YOU HEREBY RELEASE NIST FROM LIABILITY FOR ANY INDIRECT, CONSEQUENTIAL, SPECIAL, OR INCIDENTAL DAMAGES (INCLUDING DAMAGES FOR LOSS OF BUSINESS PROFITS, BUSINESS INTERRUPTION, LOSS OF BUSINESS INFORMATION, AND THE LIKE), WHETHER ARISING IN TORT, CONTRACT, OR OTHERWISE, ARISING FROM OR RELATING TO THE DATA (OR THE USE OF OR INABILITY TO USE THIS DATA), EVEN IF NIST HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES.

To the extent that NIST may hold copyright in countries other than the United States, you are hereby granted the non-exclusive irrevocable and unconditional right to print, publish, prepare derivative works and distribute the NIST data, in any medium, or authorize others to do so on your behalf, on a royalty-free basis throughout the world.

You may improve, modify, and create derivative works of the data or any portion of the data, and you may copy and distribute such modifications or works. Modified works should carry a notice stating that you changed the data and should note the date and nature of any such change. Please explicitly acknowledge the National Institute of Standards and Technology as the source of the data: Data citation recommendations are provided below. Permission to use this data is contingent upon your acceptance of the terms of this agreement and upon your providing appropriate acknowledgments of NIST's creation of the data.

## Citation format

Author/editor (Publication Year), Title, Publisher, Persistent Identifier (PID) or URL (Access date). 
