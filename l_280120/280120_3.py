
class My_exep(Exception):
    def __init__(self, txt):
        self.txt = txt
    def __str(self):
        return 'Ошибочка!'
a = []
while True:
    user_el = input("Введите число, для окончания ввода введите 'stop': ")
    if user_el == 'stop':
        break
    try:
        user_el = int(user_el)
    except ValueError:
        print('Это не число')
    except My_exep as err:
        print(err)
    else:
        a.append(user_el)
print(f"Результат: {a}")

















