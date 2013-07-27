
all: ivb-model.svg simple-model.svg

ivb.dot: gen-dot.py ivb_client_ratios.py
	./gen-dot.py > $@
simple.dot: gen-dot.py simple_ratios.py
	./gen-dot.py simple > $@

ivb-model.svg: ivb.dot
	dot -Tsvg $^ > $@
ivb-model.png: ivb.dot
	dot -Tpng $^ > $@
simple-model.svg: simple.dot
	dot -Tsvg $^ > $@
simple-model.png: simple.dot
	dot -Tpng $^ > $@

clean:
	rm -f simple.dot ivb.dot ivb-model.svg simple-model.svg simple.png ivb-model.png

