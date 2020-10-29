import time
import datetime

def pow(x, n):
    if n == 0:
        return 1
    elif n == 1:
        return x
    elif n % 2 == 0:
        return pow(x * x, n / 2)
    else:
        return pow(x * x, n / 2) * x

start = time.time()
print pow(10, 4096)
print (time.time() - start) * 1000