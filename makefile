all: README.md

README.md:
	echo "# Guessing Game Project" > README.md
	echo "Makefile Run at :" >> README.md
	date '+%m-%d-%Y %H:%M:%S' >> README.md
	echo "\nguessinggame.sh contains the following number of entries:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md
