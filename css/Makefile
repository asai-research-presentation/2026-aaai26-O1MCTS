
.PHONY: all clean

all: default.css layout.css projector.css

%.css : %.scss $(wildcard *.scss)
	sassc $< $@

clean:
	-rm *.css *.map
