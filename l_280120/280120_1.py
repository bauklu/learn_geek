#Реализовать класс «Дата», функция-конструктор которого должна принимать дату в виде строки формата «день-месяц-год».
# В рамках класса реализовать два метода. Первый, с декоратором @classmethod, должен извлекать число, месяц, год и
# преобразовывать их тип к типу «Число». Второй, с декоратором @staticmethod, должен проводить валидацию числа,
# месяца и года (например, месяц — от 1 до 12). Проверить работу полученной структуры на реальных данных

class My_Data:
    @classmethod
    def my_method_1(cls, param):
        a = [int(el) for el in param.split('-')]
        for im in a:
            print(im, ' ', end='')
        return a

    @staticmethod
    def my_method_2(param):
        b = My_Data.my_method_1(param)
        if b[1] > 0 and b[1] < 13:
            return 'Все правильно'
        else:
            return 'Ошибка'

My_Data.my_method_1('12-01-2020')

print(My_Data.my_method_2('04-11-2019'))





    