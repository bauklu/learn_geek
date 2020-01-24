#Реализуйте базовый класс Car. У данного класса должны быть следующие атрибуты: speed, color, name, is_police (булево).
# А также методы: go, stop, turn(direction), которые должны сообщать, что машина поехала, остановилась, повернула (куда).
# Опишите несколько дочерних классов: TownCar, SportCar, WorkCar, PoliceCar. Добавьте в базовый класс метод show_speed,
# который должен показывать текущую скорость автомобиля. Для классов TownCar и WorkCar переопределите метод show_speed.
# При значении скорости свыше 60 (TownCar) и 40 (WorkCar) должно выводиться сообщение о превышении скорости.
#Создайте экземпляры классов, передайте значения атрибутов. Выполните доступ к атрибутам, выведите результат.
# Выполните вызов методов и также покажите результат

class Car:
    def __init__(self, speed, color, name, is_police):
        self.speed = speed
        self.color = color
        self.name = name
        self.is_police = is_police
    def go(self):
        print('поехали')
    def stop(self):
        print('остановились')
    def turn(self):
        print('повернули')
    def show_speed(self):
        print(f'Скорость : {self.speed}')
    def show_param(self):
        print(f'авто: {self.color}, марка: {self.name}, полис: {self.is_police}')

class TownCar(Car):

    def show_speed(self):
        if self.speed > 60:
            print('Превышение скорости!')
        print(f'Нормально едем : {self.speed}')


class WorkCar(Car):

    def show_speed(self):
        if self.speed > 40:
            print('Давай потише!')
        print(f'Ну и колдобины! : {self.speed}')

auto_1 = Car(80, 'красный', 'Mersedes', False)
auto_1.show_speed()
auto_1.go()
auto_1.stop()
auto_1.turn()

auto_2 = TownCar(70, 'синий', 'Ford', True)
auto_2.show_speed()
auto_2.go()
auto_2.stop()
auto_2.turn()

auto_3 = WorkCar(45, 'желтый', 'Ford', False)
auto_3.show_speed()
auto_3.show_param()
auto_3.go()
auto_3.turn()

