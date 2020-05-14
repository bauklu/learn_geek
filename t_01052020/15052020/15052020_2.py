#Создать текстовый файл (не программно), сохранить в нем несколько строк, выполнить подсчет количества строк,
# количества слов в каждой строке
with open ("file4.txt", "a+", encoding = "utf-8") as a:
    while True:
        line = input('Введите текст: ')
        if line == '':
            break
        line = line + '\n'
        a.write(line)
    a.seek(0)

tot_words = 0
lines = 0
for line in open('file4.txt', 'r+'):
    lines += 1
    words = 0
    for word in line.split():
        words += 1
        tot_words +=1
    print('количество слов в {} строке: {}'.format(lines, words))

print('Всего {} строк:'.format(lines))
print('Всего {} слов:'.format(tot_words))