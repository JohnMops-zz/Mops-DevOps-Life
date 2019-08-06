import sys

x = int(input("Please enter a positive number:> "))

list = []
count = x


def task(count):
    while count != 1:
        if count % 2 == 0:
             count = count / 2
             list.append(int(count))
        else:
            count = count * 3 + 1
            list.append(int(count))
    else:
        list.append(int(count))
    return list

print("The lenght of the list",len(task(count)))
list_len = []
for i in range(count):
    list_len.append(len(task(count)))



x = list_len[-2]
index = list_len.index(x)
task(index)
print(sum(list))






