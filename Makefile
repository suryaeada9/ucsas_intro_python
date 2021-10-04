HTML_FILES = UCSAS_Python.slides.html

all: $(HTML_FILES)

clean: 
	rm -f $(HTML_FILES) 

%.slides.html: %.ipynb
	ipython nbconvert "$<" --to slides --post serve
