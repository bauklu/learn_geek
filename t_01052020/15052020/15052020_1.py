#Создать программно файл в текстовом формате, записать в него построчно данные, вводимые пользователем.
# Об окончании ввода данных свидетельствует пустая строка.

with open ("file4.txt", "a+", encoding = "utf-8") as a:
    while True:
        line = input('Введите текст: ')
        if line == '':
            break
        line = line + '\n'
        a.write(line)
    a.seek(0)
    for el in a:
       print(el, end = '')







