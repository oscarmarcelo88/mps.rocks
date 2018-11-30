BASEDIR=$(CURDIR)
DOCDIR=$(BASEDIR)/docs

install:
	pip install mkdocs
	pip install mkdocs-material

link:
	ln -sf $(BASEDIR)/README.md $(DOCDIR)/index.md

preview: link
	mkdocs serve

deploy: link
	mkdocs gh-deploy --clean