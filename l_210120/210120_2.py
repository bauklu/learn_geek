#Реализовать класс Road (дорога), в котором определить атрибуты: length (длина), width (ширина). Значения данных атрибутов
# должны передаваться при создании экземпляра класса. Атрибуты сделать защищенными. Определить метод расчета массы асфальта,
# необходимого для покрытия всего дорожного полотна. Использовать формулу: длинна*ширина*масса асфальта для покрытия
# одного кв метра дороги асфальтом, толщиной в 1 см*число см толщины полотна. Проверить работу метода.
#Например: 20м*5000м*25кг*5см = 12500 т

class Road:

    def __init__(self, __length, __width):
        self.__length = __length
        self.__width = __width

    def massa(self):
        return(self.__length * self.__width * 25)

road = Road(5000, 20)
print(f'Масса асфальта {(road.massa() * 5)} кг')










