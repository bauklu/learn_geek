#Реализовать функцию, принимающую два числа (позиционные аргументы) и выполняющую их деление.
# Числа запрашивать у пользователя, предусмотреть обработку ситуации деления на ноль.

def div_func(num1, num2):
    if num2 != 0:
        return num1 / num2
    else:
        return 'На ноль делить нельзя'
a = float(input('введите первое число: '))
b = float(input('введите второе число: '))
print((div_func(a, b)))


