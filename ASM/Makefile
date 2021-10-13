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
CFLAGS := -Wall -Wextra -Werror
ASMC := nasm
ASMFLAGS := -fmacho64

all: Colleen Grace Sully

Colleen: Colleen.o
	$(CC) $(CFLAGS) $< -o $@

Grace: Grace.o
	$(CC) $(CFLAGS) $< -o $@

Sully: Sully.o
	$(CC) $(CFLAGS) $< -o $@

%.o: %.asm
	$(ASMC) $(ASMFLAGS) $< -o $@

clean:
	rm -f Colleen Grace Sully Grace_kid.asm Sully_* *.o

re: clean all

.PHONY: all clean re Coleen Grace Sully
