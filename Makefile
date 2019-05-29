all: file_tests

file_tests:
	python -OOum test.parse -s  \
		./data/*/**/**/*.py \
		-i "*bad*" /
		-i "*/cpython/**/test/"

exitfirst:
	python -Oum test.parse -s -x \
		./data/*/**/**/*.py \
		-i "*bad*" /
		-i "*/cpython/**/test/"
