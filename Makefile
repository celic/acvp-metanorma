.PHONY: update clean publish

SOURCES := draft-gold-acvp-iana.adoc draft-gold-acvp-protocol-spec.adoc draft-gold-acvp-sub-drbg.adoc draft-gold-acvp-sub-kdf108.adoc draft-gold-acvp-sub-kdf135-ikev1.adoc draft-gold-acvp-sub-kdf135-ikev2.adoc draft-gold-acvp-sub-kdf135-snmp.adoc draft-gold-acvp-sub-kdf135-x942.adoc draft-gold-acvp-sub-kdf135-x963.adoc draft-gold-acvp-sub-mac.adoc draft-gold-acvp-sub-pbkdf.adoc draft-gold-acvp-sub-sha.adoc draft-gold-acvp-sub-sha3.adoc
HTML 	:= $(patsubst %.adoc, %.html, $(SOURCES))
TXT 	:= $(patsubst %.adoc, %.txt,  $(SOURCES))

update:
	bundle install

clean:
	rm -rf *.err *.html *.xml *.txt documents/

%.html: %.adoc
	metanorma compile -t ietf -x html $<

%.txt: %.adoc
	metanorma compile -t ietf -x txt $<

publish:
	mkdir -p documents
	mv *.html documents/
	mv *.txt documents/

all: $(HTML) $(TXT)
