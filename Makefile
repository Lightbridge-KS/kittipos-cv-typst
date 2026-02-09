CV = Kittipos-CV
CV_PRO = Kittipos-CV-Professional

.PHONY: all cv professional clean watch watch-pro

all: cv professional

cv:
	typst compile $(CV).typ

professional:
	typst compile $(CV_PRO).typ

watch:
	typst watch $(CV).typ

watch-pro:
	typst watch $(CV_PRO).typ

clean:
	rm -f $(CV).pdf $(CV_PRO).pdf
