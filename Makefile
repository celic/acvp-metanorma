.PHONY: update clean

update:
	bundle install

clean:
	rm -rf *.err *.html *.xml *.txt documents/

%.html: %.adoc
	metanorma compile -t ietf -x html $<

%.txt: %.adoc
	metanorma compile -t ietf -x txt $<

all: *.html *.txt
	mkdir -p documents
	mv *.html documents/
	mv *.txt documents/

