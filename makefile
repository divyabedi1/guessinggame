#!/usr/bin/env bash

all: README.md

README.md:
	guessinggame.sh
	touch README.md
	echo "#GuessingGame" > README.md
	echo $$(Date) >> README.md
	echo '' >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clear: rm README.md
