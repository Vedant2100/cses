n= input()

def dice_sum(n):
    if n == 1:
        return 1
    if f[n] is not None:
        return f[n]
    else:
        f[n] = 0
        for j in range(1, n+1):
            f[n] += f[j] * f[n-j]
        return f[n]

print(dice_sum(n))