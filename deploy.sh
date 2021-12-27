hexo generate
cp source/images/* public/images/
cp -rp public/* docs/
touch docs/.nojekyll
git add .
git commit -m"Deploying to GitHub Pages"
git push origin main