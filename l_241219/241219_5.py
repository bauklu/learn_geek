#Программа запрашивает у пользователя строку чисел, разделенных пробелом. При нажатии Enter должна выводиться сумма чисел.
# Пользователь может продолжить ввод чисел, разделенных пробелом и снова нажать Enter. Сумма вновь введенных чисел
# будет добавляться к уже подсчитанной сумме. Но если вместо числа вводится специальный символ, выполнение программы завершается.
# Если специальный символ введен после нескольких чисел, то вначале нужно добавить сумму этих чисел к полученной ранее сумме
# и после этого завершить программу.

def my_func(s, numbs):
    """ Вычисляет сумму чисел в строке и добавляет к сумме чисел прдыдущей строки
    s - сумма чисел предыдущей строки
    numbs - новая строка, введенная пользователем
    """
    b = list(numbs.split())

    for item in b:
        try:
            'q' not in b
            item = int(item)
            s = s + item
        except:
           return (s, 'q')
           """ возвращает сумму чисел и 'q', если найден спецсимвол """
    return (s, 0)
    """ возвращает сумму чисел и ноль, если не найден спецсимвол """
res = 0
qui = 0
while True:
    if qui == 'q':
        break

    a = input('Введите строку чисел, разделенных пробелом,\nВыход - q: ')
    res, qui = my_func(res, a)
print('Общая сумма чисел: ', res)








