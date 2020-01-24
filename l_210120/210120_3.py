#Реализовать базовый класс Worker (работник), в котором определить атрибуты: name, surname, position (должность), income (доход).
# Последний атрибут должен быть защищенным и ссылаться на словарь, содержащий элементы: оклад и премия, например,
# {"wage": wage, "bonus": bonus}. Создать класс Position (должность) на базе класса Worker.
# В классе Position реализовать методы получения полного имени сотрудника (get_full_name) и дохода с учетом премии
# (get_total_income). Проверить работу примера на реальных данных (создать экземпляры класса Position, передать данные,
# проверить значения атрибутов, вызвать методы экземпляров).

class Worker:

    def __init__(self, name, surname, position, __income):
        self.name = name
        self.surname = surname
        self.position = position
        self.income = __income

class Position(Worker):

    def __init__(self, name, surname, position, __income):
        super().__init__(name,surname, position, __income)

    def get_full_name(self):
        return self.name + self.surname + self.position

    def get_total_income(self):

        return self.income


position = Position('Bob ', 'Dilan - ', 'fireman:', 25000)
paper1 = position.get_full_name()
paper2 = position.get_total_income()
print(paper1)
print(paper2)











