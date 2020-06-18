.PHONY: update clean publish

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

all: *.html *.txt
