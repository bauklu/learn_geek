#Реализовать класс Matrix (матрица). Обеспечить перегрузку конструктора класса (метод __init__()), который должен принимать
# данные (список списков) для формирования матрицы.
#Следующий шаг — реализовать перегрузку метода __str__() для вывода матрицы в привычном виде.
#Далее реализовать перегрузку метода __add__() для реализации операции сложения двух объектов класса Matrix (двух матриц).
# Результатом сложения должна быть новая матрица.

class Matrix:
    def __init__(self, mlist):
        self.mlist = mlist
    def __str__(self):
        return '\n'.join([' '.join([str(el) for el in line]) for line in self.mlist])
    def __add__(self, other):
        sm = ''
        for line1, line2 in zip(self.mlist, other.mlist):
            res = [x + y for x, y in zip(line1, line2)]
            sm = sm + ' '.join([str(el) for el in res]) + '\n'
        return sm
m1 = Matrix([[1, 2, 3], [4, 5, 6], [7, 8, 9]])
print(m1)
print()
m2 = Matrix([[4, 0, -1], [-2, 6, 7], [1, -1, -3]])
print(m2)
print()
print(m1 + m2)
