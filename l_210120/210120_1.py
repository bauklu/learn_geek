#Создать класс TrafficLight (светофор) и определить у него один атрибут color (цвет) и метод running (запуск).
# Атрибут реализовать как приватный. В рамках метода реализовать переключение светофора в режимы: красный, желтый, зеленый.
# Продолжительность первого состояния (красный) составляет 7 секунд, второго (желтый) — 2 секунды, третьего (зеленый) —
# на ваше усмотрение. Переключение между режимами должно осуществляться только в указанном порядке (красный, желтый, зеленый).
# Проверить работу примера, создав экземпляр и вызвав описанный метод

import time
from itertools import cycle

class TrafficLight:
    def __init__(self, __color, t):
        self.__color = color
        self.t = t
    def running(self):
        print('Горит ' + self.__color)
        time.sleep(self.t)

d = {'7': 'красный', '2': 'желтый', '1': 'зеленый'}
с = 0

for el in cycle(d):
    if с > 3:
        break
    for k, val in d.items():
        t = int(k)
        color = val
        tr = TrafficLight(color, t)
        tr.running()
    с += 1

print(tr._TrafficLight__color)




