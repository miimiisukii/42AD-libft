NAME = libft.a

CC = gcc
CFLAGS = -Wall -Wextra -Werror

SRCS = ft_atoi.c

OBJ = $(SRCS:.c,.o)

# gcc -Wall -Wextra -Werror main.c -o main

all: $(NAME)

NAME: $(OBJ)

.c:.o
	$(CC) $(CFLAGS) $(SRC) -c

clean:
	rm -fr $(OBJ)

fclean: clean
	rm -fr $(NAME)

re: fclean all

.PHONY: all clean fclean re
