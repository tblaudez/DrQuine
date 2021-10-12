# **************************************************************************** #
#                                                                              #
#                                                         ::::::::             #
#    Makefile                                           :+:    :+:             #
#                                                      +:+                     #
#    By: tblaudez <tblaudez@student.codam.nl>         +#+                      #
#                                                    +#+                       #
#    Created: 2021/03/31 15:06:14 by tblaudez      #+#    #+#                  #
#    Updated: 2021/05/12 10:06:26 by tblaudez      ########   odam.nl          #
#                                                                              #
# **************************************************************************** #

CC := clang
CFLAGS := -Wall -Wextra -Werror -g3

all: Colleen Grace Sully

Colleen: Colleen.o
	$(CC) $(CFLAGS) $< -o $@
	rm -f $<

Grace: Grace.o
	$(CC) $(CFLAGS) $< -o $@
	rm -f $<

Sully: Sully.o
	$(CC) $(CFLAGS) $< -o $@
	rm -f $<

%.o: %.asm
	nasm -f macho64 -g $< -o $@

clean:
	rm -f Colleen Grace Sully Grace_kid.asm
	find . -name "Sully_*.asm" -delete

re: clean all

.PHONY: all clean re Coleen Grace Sully
