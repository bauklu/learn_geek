#Проект «Склад оргтехники».

class Warehouse:
    def __init__(self, item, n):
        self.d = {'printer': 2, 'scanner' : 3, 'xerox': 5}
        self.item = item
        self.n = n
    def recieve(self):
        try:
            if self.item in self.d:
                self.d[self.item] += self.n
            else:
                self.d[self.item] = self.n
            print(f'На складе: {self.d}')
            return f'Поступило {self.item} в количестве {self.n} штук'
        except:
            return f'Проверьте формат данных, количество должно быть числом'
    def transfer(self, division):
        self.division = division
        self.d[self.item] -= self.n
        print(f'На складе: {self.d}')
        return f'Передано в {self.division} {self.item} в количестве {self.n} штук'
#    def __str__(self):
#       return f'На складе: {self.d}'

class Of_equip:
    def __init__(self, model, speed, resolution):
        self.model = model
        self.speed = speed
        self.resolution = resolution
    def __str__(self):
        return self.model + ' ' + str(self.speed) + 'л/мин' + ' ' + str(self.resolution) + 'dpi'

class Printer(Of_equip):
    def __init__(self, model, speed, resolution, print_tec):
        super().__init__(model, speed, resolution)
        self.print_tec = print_tec
        print(f'Принтер. Технология печати: {self.print_tec}')

class Scanner(Of_equip):
    def __init__(self, model, speed, resolution, col_depth):
        super().__init__(model, speed, resolution)
        self.col_depth = col_depth
        print(f'Сканер. Глубина цвета: {self.col_depth} бит')

class Xerox(Of_equip):
    def __init__(self, model, speed, resolution, scaling):
        super().__init__(model, speed, resolution)
        self.scaling = scaling
        print(f'Копир. Масштабирование: {self.scaling}%')


a = Scanner('Epson', 240, 600, 24)
print(a)
b = Xerox('Canon', 300, 840, 400 )
print(b)
z = Printer('HP', 40, 120, 'laser')
print(z)
print('**********************************')
p_get = Warehouse('printer', '5')

print(p_get.recieve())
print(' ')
p1_get = Warehouse('printer', 4)
print(p1_get.recieve())

print(' ')
ch_get = Warehouse('Чернильница', 5)
print(ch_get.recieve())

print(' ')
scan_out = Warehouse('scanner', 3)
print(scan_out.transfer('Бухгалтерия'))
