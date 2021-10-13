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

all: Colleen Grace Sully

Colleen: Colleen.c
	$(CC) $(CFLAGS) $< -o $@

Grace: Grace.c
	$(CC) $(CFLAGS) $< -o $@

Sully: Sully.c
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm -f Colleen Grace Sully Grace_kid.c Sully_*

re: clean all

.PHONY: all clean re Coleen Grace Sully