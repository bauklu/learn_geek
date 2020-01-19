#Создать текстовый файл (не программно), сохранить в нем несколько строк, выполнить подсчет количества строк,
# количества слов в каждой строке

lines = 0
for line in open('READ_1.txt', 'r'):
    lines += 1
    words = 0
    for word in line.split():
        words += 1
    print('количество слов в {} строке: {}'.format(lines, words))

print('Всего {} строк:'.format(lines))
