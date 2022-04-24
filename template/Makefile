PROJ = template

open:$(PROJ).new.pdf
	emacs $(CURDIR)/$(PROJ).new.pdf &

$(PROJ).new.pdf:$(PROJ).new.tex
	ptex2pdf -l -o "-synctex=1 -file-line-error" $(PROJ).new.tex

$(PROJ).new.tex:$(PROJ).tex
	perl -pe 's/\{article/\{jarticle/; s/Ryo\ Haruyama/春山\　椋/g' $(PROJ).tex -o > $(PROJ).new.tex

$(PROJ).tex:$(PROJ).org
	emacs $(PROJ).org --batch -f org-latex-export-to-latex

clean:
	rm -f *.aux *.log *.out *.gz *.tex *.bak *.pdf *.html *.toc

.PHONY: clean open
