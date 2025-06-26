
.PRECIOUS: %.tar

all: elpa/org-9.7.11 elpa/htmlize-20240915.1657

elpa/%: %.tar
	emacs --batch --quick --load install-package-file.el $<

%.tar:
	wget -q "https://elpa.gnu.org/packages/$@" -O $@ || \
	( wget -q "https://elpa.gnu.org/packages/$@.lz" -O $@.lz && lzip -d $@.lz ) || \
	wget -q "https://melpa.org/packages/$@" -O$@

clean:
	-rm *.tar *.tar.lz
