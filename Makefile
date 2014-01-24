SHELL = /bin/sh
TMP_DIR = tmp
OUTPUT_DIR = rendered

%.pdf: %.tex create_dirs
	cp $< $(TMP_DIR);cd $(TMP_DIR); pdflatex $<; cp $@ ../$(OUTPUT_DIR)/

create_dirs:
	mkdir -p $(TMP_DIR)
	mkdir -p $(OUTPUT_DIR)

clean: clean_tmp clean_output

clean_tmp:
	rm -rf $(TMP_DIR)

clean_output:
	rm -rf $(OUTPUT_DIR)

