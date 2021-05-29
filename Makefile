.ONESHELL:
SHELL := /bin/bash
SRC = $(wildcard ./*.ipynb)

all: nlpbook 

nlpbook: $(SRC)
	nbdev_build_lib
	touch nlpbook
	rm -rf docs

sync:
	nbdev_update_lib

book: $(SRC)
	fastdoc_convert_all --path . --dest_path ../

test:
	nbdev_test_nbs

release: pypi anaconda
	nbdev_bump_version

anaconda: 
	fastrelease_conda_package --do_build false
	conda mambabuild -c pytorch -c fastai -c huggingface --user nlpbook --output-folder conda/build conda/nlpbook

conda_release:
	fastrelease_conda_package --mambabuild --build_args "-c pytorch -c fastai -c huggingface" --upload_user nlpbook

pypi: dist
	twine upload --repository pypi dist/*

dist: clean
	python setup.py sdist bdist_wheel

clean:
	rm -rf dist
