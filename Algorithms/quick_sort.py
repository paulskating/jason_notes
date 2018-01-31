# _*_ coding: utf-8 _*_
import random

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

def quick_sort(A,p,r):
    # if p<r:
    #     q = randomized_partition(A,p,r)
    #     quick_sort(A,p,q-1)
    #     quick_sort(A,q+1,r)
    # return A

    # 尾递归实现
    while p<r:
        q = randomized_partition(A,p,r)
        quick_sort(A,p,q-1)
        p = q + 1
    return A

arr = [13,-3,-25,20,-3,-16,-23,18,20,-7,12,-5,-22,15,-4,7]
abc = partition(arr,0,15)

print quick_sort(arr,0,15)
# print random.randint(1,2)