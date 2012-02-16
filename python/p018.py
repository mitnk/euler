f = open('p018.data')
L = []
for line in f:
    L.append([int(x) for x in line.split(' ')])

def sum(L):
    if len(L) == 1:
        return L[0][0]
    else:
        last = L[-1]
        L.remove(last)
        for i in range(len(L[-1])):
            if last[i] >= last[i + 1]:
                L[-1][i] += last[i]
            else:
                L[-1][i] += last[i + 1]
        return sum(L)

print sum(L)
