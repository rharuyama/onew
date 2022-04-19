SRC = template

open:pdf
	open $(SRC).pdf &

pdf:replace
	ptex2pdf -l -o "-synctex=1 -file-line-error" $(SRC).tex 

replace:export
	perl -pe 's/\{article/\{jarticle/; s/Ryo\ Haruyama/春山\　椋/g' -i.bak $(SRC).tex

export:
	emacs $(SRC).org --batch -f org-latex-export-to-latex

clean:
	rm -f *.aux *.log *.out *.gz *.tex *.bak *.pdf *.html
