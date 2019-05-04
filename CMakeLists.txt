cmake_minimum_required(VERSION 3.12)
project(Wolf3D C)

set(CMAKE_C_STANDARD 11)

include_directories(.)
include_directories(libftprintf)
include_directories(libftprintf/libft)

add_executable(Wolf3D
        libftprintf/libft/ft_atoi.c
        libftprintf/libft/ft_bzero.c
        libftprintf/libft/ft_isalnum.c
        libftprintf/libft/ft_isalpha.c
        libftprintf/libft/ft_isascii.c
        libftprintf/libft/ft_isdigit.c
        libftprintf/libft/ft_isprint.c
        libftprintf/libft/ft_itoa.c
        libftprintf/libft/ft_itoa_base_sign.c
        libftprintf/libft/ft_itoa_base_unsign.c
        libftprintf/libft/ft_lstadd.c
        libftprintf/libft/ft_lstdel.c
        libftprintf/libft/ft_lstdelone.c
        libftprintf/libft/ft_lstiter.c
        libftprintf/libft/ft_lstmap.c
        libftprintf/libft/ft_lstnew.c
        libftprintf/libft/ft_memalloc.c
        libftprintf/libft/ft_memccpy.c
        libftprintf/libft/ft_memchr.c
        libftprintf/libft/ft_memcmp.c
        libftprintf/libft/ft_memcpy.c
        libftprintf/libft/ft_memdel.c
        libftprintf/libft/ft_memmove.c
        libftprintf/libft/ft_memset.c
        libftprintf/libft/ft_putchar.c
        libftprintf/libft/ft_putchar_fd.c
        libftprintf/libft/ft_putendl.c
        libftprintf/libft/ft_putendl_fd.c
        libftprintf/libft/ft_putnbr.c
        libftprintf/libft/ft_putnbr_fd.c
        libftprintf/libft/ft_putstr.c
        libftprintf/libft/ft_putstr_fd.c
        libftprintf/libft/ft_sqrt.c
        libftprintf/libft/ft_str_allnum.c
        libftprintf/libft/ft_str_clean_join.c
        libftprintf/libft/ft_strcat.c
        libftprintf/libft/ft_strchr.c
        libftprintf/libft/ft_strclr.c
        libftprintf/libft/ft_strcmp.c
        libftprintf/libft/ft_strcpy.c
        libftprintf/libft/ft_strdel.c
        libftprintf/libft/ft_strdup.c
        libftprintf/libft/ft_strequ.c
        libftprintf/libft/ft_strgsort.c
        libftprintf/libft/ft_striter.c
        libftprintf/libft/ft_striteri.c
        libftprintf/libft/ft_strjoin.c
        libftprintf/libft/ft_strlcat.c
        libftprintf/libft/ft_strlen.c
        libftprintf/libft/ft_strmap.c
        libftprintf/libft/ft_strmapi.c
        libftprintf/libft/ft_strncat.c
        libftprintf/libft/ft_strncmp.c
        libftprintf/libft/ft_strncpy.c
        libftprintf/libft/ft_strnequ.c
        libftprintf/libft/ft_strnew.c
        libftprintf/libft/ft_strnstr.c
        libftprintf/libft/ft_strnsymb.c
        libftprintf/libft/ft_strrchr.c
        libftprintf/libft/ft_strrev.c
        libftprintf/libft/ft_strsplit.c
        libftprintf/libft/ft_strstr.c
        libftprintf/libft/ft_strsub.c
        libftprintf/libft/ft_strswap.c
        libftprintf/libft/ft_strtrim.c
        libftprintf/libft/ft_swap.c
        libftprintf/libft/ft_tolower.c
        libftprintf/libft/ft_toupper.c
        libftprintf/libft/ft_word_count.c
        libftprintf/libft/get_next_line.c
        libftprintf/libft/libft.h
        libftprintf/ft_apply_flags.c
        libftprintf/ft_flags.c
        libftprintf/ft_get_numbers.c
        libftprintf/ft_get_unichar.c
        libftprintf/ft_get_unistr.c
        libftprintf/ft_get_unsign_ptr_bin.c
        libftprintf/ft_parse_printf.c
        libftprintf/ft_prec_for_nonstring.c
        libftprintf/ft_prec_width.c
        libftprintf/ft_printf.c
        libftprintf/ft_printf_fd.c
        libftprintf/ft_sharp_octal_hexa.c
        libftprintf/ft_typical_or_unicode_arg.c
        libftprintf/ft_zero_nonptr.c
        libftprintf/libftprintf.h
        main.c
        wolf3d.h init_params.c read_map.c handle_map_error.c init_position.c init_sdl.c handle_error.c check_arguments.c check_event.c make_calculations.c height_for_column.c route_events.c libftprintf/libft/ft_strsub_chr.c parse_map.c add_perimeter_walls.c set_wall_color.c)

find_package(SDL2)

if(NOT SDL2_FOUND)
#    set(SDL2_BIN_DIR "${CMAKE_CURRENT_BINARY_DIR}/sdl")
    set(SDL2_BIN_DIR "/Users/abodnar/homebrew/Cellar/sdl2")

    include(ExternalProject)
    ExternalProject_Add(sdlLibrary
            PREFIX ${SDL2_BIN_DIR}/source
            INSTALL_DIR ${SDL2_BIN_DIR}
            CMAKE_ARGS -DCMAKE_INSTALL_PREFIX=${SDL2_BIN_DIR}
            GIT_REPOSITORY "https://github.com/SDL-mirror/SDL"
            GIT_TAG "release-2.0.9"
            GIT_PROGRESS ON)

    add_dependencies(Wolf3D sdlLibrary)
    target_link_libraries(Wolf3D PRIVATE ${SDL2_BIN_DIR}/2.0.9_1/lib/libSDL2.dylib)
    target_include_directories(Wolf3D PRIVATE ${SDL2_BIN_DIR}/include)
else()
    target_link_libraries(Wolf3D PRIVATE ${SDL2_LIBRARIES})
    target_include_directories(Wolf3D PRIVATE ${SDL2_INCLUDE_DIR})
endif()
