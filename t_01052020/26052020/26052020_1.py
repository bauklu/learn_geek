#Реализовать класс «Дата», функция-конструктор которого должна принимать дату в виде строки формата «день-месяц-год».
# В рамках класса реализовать два метода. Первый, с декоратором @classmethod, должен извлекать число, месяц, год и
# преобразовывать их тип к типу «Число». Второй, с декоратором @staticmethod, должен проводить валидацию числа, месяца
# и года (например, месяц — от 1 до 12). Проверить работу полученной структуры на реальных данных.

class  Dat:
    @classmethod
    def taked(cls, d):
        a = [int(el) for el in d.split('-')]
        for im in a:
            print(im, ' ', end = ' ')
        return a
    @staticmethod
    def valid(d):
        c = Dat.taked(d)
        if c[0] > 0 and c[0] < 32 and c[1] > 1 and c[1] < 13:
            print('Все правильно ')
        else:
            print('Проверьте день и месяц ')

Dat.taked('26 - 05 - 2020')
Dat.valid('26 - 14 - 2020')
Dat.valid('01-12-1986')

cl = Dat
cl.valid('11-12-2015')
cl.taked('3-04-1945')





