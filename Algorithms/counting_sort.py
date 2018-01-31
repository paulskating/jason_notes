# _*_ coding: utf-8 _*_
import random

arr = []
for index in range(20):
    arr.append(random.randint(0,100))
def counting_sort(A,k):
    C = []
    B = []
    for a in range(len(A)):
        B.append(0)
    for i in range(k):
        C.append(0)
    for j in range(len(A)):
        C[A[j]] = C[A[j]] + 1
    for i in range(1,k):
        C[i] = C[i] + C[i-1]
    for m in range((len(A)-1),-1,-1):
        B[C[A[m]]-1] = A[m]
        C[A[m]] = C[A[m]] - 1
    return B

print arr
print counting_sort(arr,101)