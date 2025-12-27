
.PRECIOUS: %.tar

all: elpa/org-9.7.39 elpa/htmlize-20250724.1703

elpa/%: %.tar
	emacs --batch --quick --load install-package-file.el $<

%.tar:
	wget -q "https://elpa.gnu.org/packages/$@" -O $@ || \
	( wget -q "https://elpa.gnu.org/packages/$@.lz" -O $@.lz && lzip -d $@.lz ) || \
	wget -q "https://melpa.org/packages/$@" -O$@

clean:
	-rm *.tar *.tar.lz
