#Создать список и заполнить его элементами различных типов данных.
# Реализовать скрипт проверки типа данных каждого элемента. Использовать функцию type()
# для проверки типа.
# Элементы списка можно не запрашивать у пользователя, а указать явно, в программе.

a_list = []
a_list.append(2)
a_list.extend([8, 'as', 4.31])
a_list.append('dep')
a_list.append(85.4)
a_list.append(True)
a_list.append([1, 8, 3])
a_list.insert(2, False)
print(a_list)
for item in a_list:
    print(type(item))
