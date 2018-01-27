# _*_ coding: utf-8 _*_
import random
import time

arr = []
for index in range(36):
    arr.append(random.randint(0,100))


def bubble_sort(lists):
    lists_len = len(lists)
    for i in range(lists_len - 1):
        for j in range(lists_len - i - 1):
            if lists[j] > lists[j + 1]:
                lists[j], lists[j+1] = lists[j+1], lists[j]
    return lists


def cocktail_sort(lists):
    left = 0
    right = len(lists) -1
    while left < right:
        for i in range(right):
            if lists[i]>lists[i+1]:
                lists[i],lists[i+1]=lists[i+1],lists[i]
        right = right - 1
        for j in range(right,left,-1):
            if lists[j-1]>lists[j]:
                lists[j-1],lists[j] = lists[j],lists[j-1]
        left = left + 1
    return lists


def selection_sort(lists):
    lists_len = len(lists)
    for i in range(lists_len - 1):
        min = i
        for j in range(i+1,lists_len):
            if lists[min]>lists[j]:
                min = j
        if min != i:
            lists[min],lists[i] = lists[i],lists[min]
    return lists


def insertion_sort(lists):
    lists_len = len(lists)
    for i in range(1,lists_len):
        get = lists[i]
        j = i - 1
        while get<lists[j] and j>=0:
            lists[j+1] = lists[j]
            j = j - 1
        lists[j + 1] = get
    return lists


# def merge_sort(lists,a,b):
#     if a < b:
#         q = (a+b)/2
#         merge_sort(lists,a,q)
#         merge_sort(lists,q+1,b)
#         merge_sort(lists,a)
def merge(a,b):
    c = []
    h = j = 0
    while j < len(a) and h < len(b):
        if a[j] < b[h]:
            c.append(a[j])
            j = j + 1
        else:
            c.append(b[h])
            h = h + 1
    if j == len(a):
        for i in b[h:]:
            c.append(i)
    else:
        for i in a[j:]:
            c.append(i)
    return c

def merge_sort(lists):

    if len(lists)<=1:
        return lists
    mid = len(lists)/2
    left = merge_sort(lists[:mid])
    right = merge_sort(lists[mid:])

    return merge(left,right)

start_1 = time.clock()
print merge_sort(arr)
end_1 = time.clock()
print('Merge Running time: %s Seconds'%(end_1-start_1))

start_2 = time.clock()
print insertion_sort(arr)
end_2 = time.clock()
print('Bubble Running time: %s Seconds'%(end_2-start_2))

