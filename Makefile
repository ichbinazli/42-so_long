# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: naanapa <naanapa@student.42kocaeli.com.    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/06/04 14:21:30 by naanapa           #+#    #+#              #
#    Updated: 2024/06/04 14:21:36 by naanapa          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRC = src/main.c src/game.c src/map_constraction.c src/map_validation.c src/draw.c src/utils.c src/input.c src/path_finding.c
INC = inc
NAME = so_long
CC = gcc
CFLAGS = -Wall -Werror -Wextra
FRAMEWORKS = -framework OpenGL -framework AppKit
MLX = mlx/libmlx.a

all: $(NAME)

$(NAME): $(SRC) $(MLX)
	@gcc -g -o $(NAME) $(SRC) $(CFLAGS) $(FRAMEWORKS) $(MLX) -I $(INC)

$(MLX) :
			@make -C mlx

clean:
	@rm -rf $(NAME)

fclean: clean
	@make -C mlx clean

re: fclean all

.PHONY: clean fclean re all
