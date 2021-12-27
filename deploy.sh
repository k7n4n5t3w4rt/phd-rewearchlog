hexo generate
cp source/images/* docs/images/
touch docs/.nojekyll
git add .
git commit -m"Deploying to GitHub Pages"
git push origin main