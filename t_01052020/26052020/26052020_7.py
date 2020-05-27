#Реализовать проект «Операции с комплексными числами». Создайте класс «Комплексное число», реализуйте перегрузку методов
# сложения и умножения комплексных чисел. Проверьте работу проекта, создав экземпляры класса (комплексные числа) и
# выполнив сложение и умножение созданных экземпляров. Проверьте корректность полученного результата

class Compl:
    def __init__(self, d):
        a = []
        b = d.split('+')
        a.append(b[0])
        c = b[1].split('i')
        a.append(c[0])
        self.a = a

    def __mul__(self, other):
        a1 = int(self.a[0]) * int(other.a[0])
        a2 = int(self.a[1]) * int(other.a[1])
        a3 = int(self.a[0]) * int(other.a[1])
        a4 = int(self.a[1]) * int(other.a[0])
        self. res = a1 - a2
        self.res_i = a3 + a4
        return f'{self.res} + {self.res_i}i'

    def __add__(self, other):
        self.a1 = int(self.a[0]) + int(other.a[0])
        self.a2 = int(self.a[1]) + int(other.a[1])
        return f'{self.a1} + {self.a2}i'

cd1 = Compl('2 + 1i')
cd2 = Compl('3 + 4i')
print(cd1 * cd2)
print(cd1 + cd2)

