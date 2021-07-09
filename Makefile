clean:
	rm -f *.ipynb _data/*.csv

gen-sample:
	cd ../owid-grapher-py; \
 	tail -n 100 ../data/charts.jsonl \
		| poetry run python -m owid.grapher.notebook /dev/stdin ../owid-jupyter-demo

gen-full:
	cd ../owid-grapher-py; \
	poetry run python -m owid.grapher.notebook ../data/charts.jsonl ../owid-jupyter-demo
