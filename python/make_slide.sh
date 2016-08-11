npm install reveal.js
cd ./node_modules
cp ~/bin/slides.md .

pandoc slides.md -o slides.html -s -V theme=beige -t revealjs

# HTML5 Document
# pandoc slides.md -o slides.html -s -V theme=beige -t html5

# Export to PDF
# pandoc slides.md --latex-engine=xelatex -o slides.pdf
