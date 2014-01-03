ENV := $(CURDIR)/env
PYTHON := $(shell which python2.7)

install: $(ENV)

$(ENV):
	virtualenv --python=$(PYTHON) $(ENV)
	$(ENV)/bin/pip install -Ur requirements.txt


.PHONY: install
