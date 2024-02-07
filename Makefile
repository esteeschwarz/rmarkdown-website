
HTML_FILES := $(patsubst %.md, %.html ,$(wildcard *.md))

all: clean html

html: $(HTML_FILES)

%.html: %.md
	R --slave -e "rmarkdown::render('$<')"

.PHONY: clean
clean:
	$(RM) $(HTML_FILES)

