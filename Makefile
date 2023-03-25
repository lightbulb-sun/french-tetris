TETRIS_ROM = tetrisv11.gb

NAME = tetris_french
SOURCE_FILE = $(NAME).asm
OBJECT_FILE = $(NAME).o
OUTPUT_ROM = $(NAME).gb

all:
	rgbasm  -E $(SOURCE_FILE) -o $(OBJECT_FILE)
	rgblink -O $(TETRIS_ROM) -o $(OUTPUT_ROM) $(OBJECT_FILE)
	rgbfix -f gh $(OUTPUT_ROM)
