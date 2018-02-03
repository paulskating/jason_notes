# _*_ coding: utf-8 _*_
import random

#找到数组A中第i小的元素
def randomized_select_i(A,i):
    return randomized_select(A,0,len(A)-1,i)

def partition(A,p,r):
    x = A[r]
    i = p - 1
    for j in range(p,r):
        if A[j]<=x:
            i = i + 1
            A[i],A[j] = A[j],A[i]
    A[i+1],A[r] = A[r],A[i+1]
    # print A
    return i+1

def randomized_partition(A,p,r):
    i = random.randint(p,r)
    A[i],A[r] = A[r],A[i]
    return partition(A,p,r)

def randomized_select(A,p,r,i):
    if p == r:
        return A[p]
    q = randomized_partition(A,p,r)
    k = q - p + 1
    if i == k:
        return A[q]
    elif i<k:
        return randomized_select(A,p,q-1,i)
    else:
        return randomized_select(A,q+1,r,i-k)


arr = [13,-3,-25,20,-3,-16,-23,18,20,-7,12,-5,-22,15,-4,7]
print randomized_select_i(arr,4)