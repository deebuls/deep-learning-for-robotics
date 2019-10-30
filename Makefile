help:
	@echo ' '
	@echo 'Makefile to update github pages'
	@echo ' '
zim:
	@echo 'Zim export to docs'
	zim --export -o docs --template ZeroFiveEight --index-page index -r -O deep-learning-for-robotics-papers

publish: zim
	@echo 'Publishing'
	git pull origin master
	git add -A
	git commit -m "auto-generate from make"
	git push origin master
