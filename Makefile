all: clean compile test


compile: 
	emacs --batch -f batch-byte-compile split-init.el

test:
	emacs --batch -l split-init.el -l test-split-init.el -f run-tests

clean:
	rm -f *.elc

