
GITHUB_PAGES_BRANCH=gh-pages


HTMLDIR=./public

page: 
	ghp-import -m "Generate Hexo site" -b $(GITHUB_PAGES_BRANCH) $(HTMLDIR)
	git push origin $(GITHUB_PAGES_BRANCH)

push:
	hexo clean
	git add -A && git commit -m "new" && git push origin master



