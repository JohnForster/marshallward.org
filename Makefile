CONTENT = content
OUTPUT  = output
CONFIG  = peliconf.py
THEME = notmyidea

blog: $(CONTENT)
	pelican -s $(CONFIG) -t $(THEME) -o $(OUTPUT) $(CONTENT)

clean:
	rm -rf $(OUTPUT) $(CONFIG:.py=.pyc)

.PHONY: blog clean
