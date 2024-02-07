
#HTML_FILES := $(pathsubst %.Rmd, %.html ,$(wildcard *.Rmd))

#all: clean html

#html: $(HTML_FILES)

#%.html: %.Rmd
R --slave -e "rmarkdown::render_site()"
ls
#.PHONY: clean
#clean:
#	$(RM) $(HTML_FILES)

