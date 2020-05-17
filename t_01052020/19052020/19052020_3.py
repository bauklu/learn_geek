#Реализовать базовый класс Worker (работник), в котором определить атрибуты: name, surname, position (должность),
# income (доход). Последний атрибут должен быть защищенным и ссылаться на словарь, содержащий элементы: оклад и премия,
# например, {"wage": wage, "bonus": bonus}. Создать класс Position (должность) на базе класса Worker.
# В классе Position реализовать методы получения полного имени сотрудника (get_full_name) и дохода с учетом премии
# (get_total_income). Проверить работу примера на реальных данных (создать экземпляры класса Position, передать данные,
# проверить значения атрибутов, вызвать методы экземпляров)

class Worker:
    def __init__(self, name, surname, position, wage, bonus):
        self.name = name
        self.surname = surname
        self.position = position
        self._income = {"wage" : wage, "bonus": bonus}

class Position(Worker):
    def get_full_name(self):
        print(f'{self.name} {self.surname}, Должность: {self.position}')
    def get_total_income(self):
        print(f'Доход с учетом премии: {sum(self._income.values())}')

director = Position('Иван', 'Иванов', 'Самый главный директор', 250000, 45000)
courier = Position('Борис', 'Борисов', 'Курьер', 25000, 5000)
cleaner = Position('Петр', 'Петров', 'Уборщик помещений', 10000, 3000)

director.get_full_name()
director.get_total_income()

courier.get_full_name()
courier.get_total_income()

cleaner.get_full_name()
cleaner.get_total_income()

