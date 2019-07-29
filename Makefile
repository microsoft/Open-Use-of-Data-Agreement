CFCM=node_modules/.bin/commonform-commonmark
CFDOCX=node_modules/.bin/commonform-docx
CFHTML=node_modules/.bin/commonform-html
CRITIQUE=node_modules/.bin/commonform-critique
JSON=node_modules/.bin/json
LINT=node_modules/.bin/commonform-lint
MUSTACHE=node_modules/.bin/mustache
TOOLS=$(CFCM) $(CFDOCX) $(CFHTML) $(CRITIQUE) $(JSON) $(LINT) $(MUSTACHE)

BUILD=build
SOURCES=$(filter-out README.md,$(wildcard *.md))
FORMS=$(addsuffix .form.json,$(addprefix $(BUILD)/,$(SOURCES:.md=)))
TITLE=Open Use of Data Agreement

all: docx pdf html

docx: $(addprefix $(BUILD)/,$(SOURCES:.md=.docx))
pdf: $(addprefix $(BUILD)/,$(SOURCES:.md=.pdf))
html: $(addprefix $(BUILD)/,$(SOURCES:.md=.html))

$(BUILD)/%.docx: $(BUILD)/%.form.json styles.json | $(CFDOCX) $(BUILD)
	$(CFDOCX) --title "$(TITLE)" --edition "$(EDITION)" --number decimal --indent-margins --left-align-title --styles styles.json $< > $@

$(BUILD)/%.md: $(BUILD)/%.form.json | $(CFCM) $(BUILD)
	$(CFCM) stringify --title "$(TITLE)" --edition "$(EDITION)" < $< > $@

$(BUILD)/%.html: $(BUILD)/%.form.json | $(CFHTML) $(BUILD)
	$(CFHTML) --html5 --lists --title "$(TITLE)" --edition "$(EDITION)" < $< > $@

$(BUILD)/%.form.json: %.md | $(JSON) $(CFCM) $(BUILD)
	$(CFCM) parse --only form < $< | json content.0.form > $@

%.pdf: %.docx
	unoconv $<

$(BUILD):
	mkdir -p $@

$(TOOLS):
	npm install

.PHONY: clean docker lint critique

lint: $(FORMS) | $(LINT) $(JSON)
	@for form in $(FORMS); do \
		echo ; \
		echo $$form; \
		cat $$form | $(LINT) | $(JSON) -a message | sort -u; \
	done; \

critique: $(FORMS) | $(CRITIQUE) $(JSON)
	@for form in $(FORMS); do \
		echo ; \
		echo $$form ; \
		cat $$form | $(CRITIQUE) | $(JSON) -a message | sort -u; \
	done

clean:
	rm -rf $(BUILD)
