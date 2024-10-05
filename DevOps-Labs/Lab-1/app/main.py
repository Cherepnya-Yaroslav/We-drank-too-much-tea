from colorama import Fore, Style, init

# Инициализация colorama
init(autoreset=True)

heart = [
    "   ***     ***   ",
    "  *****   *****  ",
    " ******* ******* ",
    " *************** ",
    "  *************  ",
    "   ***********   ",
    "    *********    ",
    "     *******     ",
    "      *****      ",
    "       ***       ",
    "        *        ",
]

# Рисуем сердечко красным цветом
for line in heart:
    print(Fore.RED + line)
