#Реализуйте базовый класс Car. У данного класса должны быть следующие атрибуты: speed, color, name, is_police (булево).
# А также методы: go, stop, turn(direction), которые должны сообщать, что машина поехала, остановилась, повернула (куда).
# Опишите несколько дочерних классов: TownCar, SportCar, WorkCar, PoliceCar. Добавьте в базовый класс метод show_speed,
# который должен показывать текущую скорость автомобиля. Для классов TownCar и WorkCar переопределите метод show_speed.
# При значении скорости свыше 60 (TownCar) и 40 (WorkCar) должно выводиться сообщение о превышении скорости.
#Создайте экземпляры классов, передайте значения атрибутов. Выполните доступ к атрибутам, выведите результат.
# Выполните вызов методов и также покажите результат

import random
class Car:
    def __init__(self, speed, color, name, is_police):
        self.speed = speed
        self.color = color
        self.name = name
        self.is_police = is_police
    def go(self):
        print('Поехали')
    def stop(self):
        print('Остановились')
    def turn(self, direction):
        self.direction = direction
        print(f'turn {self.direction}')
    def show_speed(self, curspeed):
        self.curspeed = curspeed
        print(f'Текущая скорость - {self.curspeed}')

class TownCar(Car):
    def __init__(self, speed, color, name, is_police, carbody):
        super().__init__(speed, color, name, is_police)
        self.carbody = carbody
        print(f'Кузов {self.carbody}')
    def show_speed(self, curspeed):
        self.curspeed = curspeed
        if int(self.curspeed) > 60:
            print(f'Превышение скорости! - {self.curspeed}')

class SportCar(Car):
    def __init__(self, speed, color, name, is_police, carpower):
        super().__init__(speed, color, name, is_police)
        self.carpower = carpower
        print(f'Мощность - {self.carpower}')

class WorkCar(Car):
    def __init__(self, speed, color, name, is_police, fuelconsumption):
        super().__init__(speed, color, name, is_police)
        self.fuelconsumption = fuelconsumption
        print(f'Потребление топлива - {self.fuelconsumption} л на км')
    def show_speed(self, curspeed):
        self.curspeed = curspeed
        if int(self.curspeed) > 40:
            print(f'Превышение скорости! - {self.curspeed}')

class PoliceCar(Car):
    def __init__(self, speed, color, name, is_police, alarmsiren):
        super().__init__(speed, color, name, is_police)
        self.alarmsiren = alarmsiren
        print(f'Сирена - {self.alarmsiren}')

d = {'left': 1, 'right': 2, 'forward' : 3, 'back' : 4}

town = TownCar(100, 'красный', 'volvo', 'есть', 'hatchback')
print('Городской автомобиль')
print(f'Скорость - {town.speed}, Цвет - {town.color}, Марка - {town.name}, Полис {town.is_police}')
town.show_speed(70)
town.stop()
town.go()
for _ in range(1, 6):
    b = random.choice(list(d.keys()))
    town.turn(b)
print(' ')
sport = SportCar(200, 'white', 'Bugatti', 'нет', 400)
print('Спортивный автомобиль')
print(f'Скорость - {sport.speed}, Цвет - {sport.color}, Марка - {sport.name}, Полис {sport.is_police}')
sport.show_speed(90)
sport.stop()
sport.go()
print(' ')
work = WorkCar(20, 'orange', 'JAC', 'нет', 5)
print('Рабочий автомобиль')
print(f'Скорость - {work.speed}, Цвет - {work.color}, Марка - {work.name}, Полис {work.is_police}')
work.show_speed(50)
work.stop()
work.go()
print(' ')
police = PoliceCar(150, 'blue', 'Mers', 'есть', 'есть')
print('Полицейская машина')
print(f'Скорость - {police.speed}, Цвет - {police.color}, Марка - {police.name}, Полис {police.is_police}')
police.show_speed(120)
police.stop()
police.go()


