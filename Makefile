.PHONY: run

help:
	@echo "Available Targets:"
	@cat Makefile | egrep '^([-a-zA-Z]+?):' | sed 's/:\(.*\)//g' | sed 's/^/- /g'

setup:
	pip install -r requirements.txt

run:
	python pypersonalfin/run.py $(LOCALE)
