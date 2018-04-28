
./_build.sh
rm -rf book-output/
git clone -b gh-pages https://github.com/paleolimbot/qgis-intro.git book-output
cd book-output
cp -r ../_book/* ./
git add --all *
git commit -m"Update the book" || true
git push -q origin gh-pages
