SRCC=main.tex
JOB=Guide_to_the_songbot
EXEC=$(JOB).pdf

all: compile view

compile:
	pdflatex -jobname $(JOB) $(SRCC)

view:
	evince $(EXEC) &

clean:
	rm -f *.aux *.log *.pdf
