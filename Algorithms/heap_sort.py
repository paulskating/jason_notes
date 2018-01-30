# _*_ coding: utf-8 _*_
import random

def max_heapify(A,size,i):
    l = i * 2 + 1
    r = l + 1
    if l < size and A[l] > A[i]:
        largest = l
    else:
        largest = i
    if r < size and A[r] > A[largest]:
        largest = r
    if largest != i:
        A[i],A[largest] = A[largest],A[i]
        max_heapify(A,size,largest)
    return A


def build_max_heap(A):
    heap_size = len(A)

    for i in range((heap_size-2)/2,-1,-1):
        max_heapify(A,heap_size,i)
    return A


def heap_sort(A):
    build_max_heap(A)
    for i in range(len(A)-1,-1,-1):
        A[0],A[i] = A[i],A[0]
        max_heapify(A,i,0)
    return A

arr = []
for index in range(20):
    arr.append(random.randint(0,100))

    
print arr
print heap_sort(arr)
