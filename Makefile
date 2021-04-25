PRINT_CMD = chromium --headless --disable-gpu --print-to-pdf
GS_CMD = gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.5 -dPDFSETTINGS=/printer -dNOPAUSE -dQUIET -dBATCH -sOutputFile

RACES = pdf/WC5E\ Races\ RUS.pdf
ROGUE = pdf/WC5E\ Rogue\ RUS.pdf

all: races rogue

pre-build:
	mkdir -p pdf/raw

races: $(RACES)

$(RACES): pre-build
	$(PRINT_CMD)=pdf/raw/races.pdf https://www.gmbinder.com/share/-MVzciofoU-21zZovm3e
	$(GS_CMD)=$(RACES) pdf/raw/races.pdf

rogue: $(ROGUE)

$(ROGUE): pre-build
	$(PRINT_CMD)=pdf/raw/rogue.pdf https://www.gmbinder.com/share/-MY_E1sZXmuW0ul4nGXs
	$(GS_CMD)=$(ROGUE) pdf/raw/rogue.pdf
