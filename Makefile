help:
	@echo ' '
	@echo 'Makefile to update github pages'
	@echo ' '

publish:
	git pull origin master
	git add -A
	git commit -m "auto-generate from make"
	git push origin master
