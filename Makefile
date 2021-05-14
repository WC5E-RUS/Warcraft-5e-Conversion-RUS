PRINT_CMD = chromium --headless --disable-gpu --print-to-pdf
GS_CMD = gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.5 -dPDFSETTINGS=/printer -dNOPAUSE -dQUIET -dBATCH -sOutputFile

RACES = pdf/WC5E\ Races\ RUS.pdf
MONSTROUS = pdf/WC5E\ Monstrous\ Races\ RUS.pdf
ROGUE = pdf/WC5E\ Rogue\ RUS.pdf
SHAMAN = pdf/WC5E\ Shaman\ RUS.pdf

all: races monstrous rogue shaman

pre-build:
	mkdir -p pdf/raw

races: $(RACES)

$(RACES): pre-build
	$(PRINT_CMD)=pdf/raw/races.pdf https://www.gmbinder.com/share/-MVzciofoU-21zZovm3e
	$(GS_CMD)=$(RACES) pdf/raw/races.pdf

monstrous: $(MONSTROUS)

$(MONSTROUS): pre-build
	$(PRINT_CMD)=pdf/raw/monstrous.pdf https://www.gmbinder.com/share/-MZCJMFgpwkn0DnKNiI-
	$(GS_CMD)=$(MONSTROUS) pdf/raw/monstrous.pdf

rogue: $(ROGUE)

$(ROGUE): pre-build
	$(PRINT_CMD)=pdf/raw/rogue.pdf https://www.gmbinder.com/share/-MY_E1sZXmuW0ul4nGXs
	$(GS_CMD)=$(ROGUE) pdf/raw/rogue.pdf

shaman: $(SHAMAN)

$(SHAMAN): pre-build
	$(PRINT_CMD)=pdf/raw/shaman.pdf https://www.gmbinder.com/share/-M_dZx3PtDJWHX7C9uey
	$(GS_CMD)=$(SHAMAN) pdf/raw/shaman.pdf
