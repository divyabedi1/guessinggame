#!/usr/bin/env bash

all:
	README.md
README.md:
	touch README.md
	guessinggame.sh
	echo "#GuessingGame" > README.md
	echo $(Date) >> README.md
	echo '' >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
clear:
	del README.md
