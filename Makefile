PRINT_CMD = chromium --headless --disable-gpu --print-to-pdf

RACES = pdf/WC5E\ Races\ RUS.pdf
ROGUE = pdf/WC5E\ Rogue\ RUS.pdf

all: races rogue

pre-build:
	mkdir -p pdf

races: $(RACES)

$(RACES): pre-build
	$(PRINT_CMD)=$(RACES) https://www.gmbinder.com/share/-MVzciofoU-21zZovm3e

rogue: $(ROGUE)

$(ROGUE): pre-build
	$(PRINT_CMD)=$(ROGUE) https://www.gmbinder.com/share/-MY_E1sZXmuW0ul4nGXs
