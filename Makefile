.PHONY: all update clean publish

SOURCES := draft-gold-acvp-iana.adoc draft-gold-acvp-protocol-spec.adoc draft-gold-acvp-sub-drbg.adoc draft-gold-acvp-sub-dsa.adoc draft-gold-acvp-sub-ecdsa.adoc draft-gold-acvp-sub-eddsa.adoc draft-gold-acvp-sub-kas-ssc-ecc.adoc draft-gold-acvp-sub-kas-ssc-ffc.adoc draft-gold-acvp-sub-kdf108.adoc draft-gold-acvp-sub-kdf135-ikev1.adoc draft-gold-acvp-sub-kdf135-ikev2.adoc draft-gold-acvp-sub-kdf135-snmp.adoc draft-gold-acvp-sub-kdf135-x942.adoc draft-gold-acvp-sub-kdf135-x963.adoc draft-gold-acvp-sub-mac.adoc draft-gold-acvp-sub-pbkdf.adoc draft-gold-acvp-sub-rsa.adoc draft-gold-acvp-sub-sha.adoc draft-gold-acvp-sub-sha3.adoc
HTML 	:= $(patsubst %.adoc, %.html, $(SOURCES))
TXT 	:= $(patsubst %.adoc, %.txt,  $(SOURCES))

all: $(HTML) $(TXT)

update:
	bundle install

clean:
	rm -rf *.err *.html *.xml *.txt documents/

%.html %.txt: %.adoc
	bundle exec metanorma compile $<

publish:
	mkdir -p documents
	cp README.md documents/README.md
	cp _config.yml documents/_config.yml
	mv *.html documents/
	mv *.txt documents/
