
#HTML_FILES := $(pathsubst %.Rmd, %.html ,$(wildcard *.Rmd))

#all: clean html

#html: $(HTML_FILES)

#%.html: %.Rmd
R --slave -e "rmarkdown::render()"
cp ./_doku.nb.html ./_site/index
cp ./_doku.Rmd ./_site/_doku.Rmd

#.PHONY: clean
#clean:
#	$(RM) $(HTML_FILES)

