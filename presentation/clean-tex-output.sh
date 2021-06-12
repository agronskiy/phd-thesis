#!/usr/bin/env bash

# clean the whole directory recursively of various auxilary files
# usually needed when preparing the archive the drectory

CURR_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

find "${CURR_DIR}" \( -name '*.log' \
	-o -name '*.gz' \
	-o -name '*.fdb*' \
	-o -name '*.aux' \
	-o -name '*.out' \
	-o -name '*.nav' \
	-o -name '*.toc' \
	-o -name '*.snm' \
	-o -name '*.bbl' \
	-o -name '*.blg' \
	-o -name '*.vrb' \
	-o -name '*.spl' \
	-o -name '*.fls' \
\) -delete
