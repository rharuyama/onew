PROJ = template

open:$(PROJ).pdf
	emacs $(CURDIR)/$(PROJ).pdf &

$(PROJ).pdf:$(PROJ).tex
	ptex2pdf -l -o "-synctex=1 -file-line-error" $(PROJ).tex

$(PROJ).tex:$(PROJ).tmp.tex
	perl -pe 's/\{article/\{jarticle/; s/Ryo\ Haruyama/春山\　椋/g' $(PROJ).tmp.tex -o > $(PROJ).tex

$(PROJ).tmp.tex:$(PROJ).tmp.org
	emacs $(PROJ).tmp.org --batch -f org-latex-export-to-latex

$(PROJ).tmp.org:
	cp $(PROJ).org $(PROJ).tmp.org

clean:
	rm -f *.aux *.log *.out *.gz *.tex *.bak *.pdf *.html *.toc *.tmp.*

.PHONY: clean open
