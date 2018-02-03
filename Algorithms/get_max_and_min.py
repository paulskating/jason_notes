# _*_ coding: utf-8 _*_


# 需要2n-2次比较
def get_max_and_min1(A):
    min = max = A[0]
    for i in range(len(A)):
        if A[i] > max:
            max = A[i]
        elif A[i] < min:
            min = A[i]
    return min,max


def get_max_and_min2(A):
    if len(A) % 2:
        min = max = A[0]
        for i in range(1,len(A),2):
            if A[i]<A[i+1]:
                if A[i]<min:
                    min = A[i]
                if A[i+1]>max:
                    max = A[i+1]
            else:
                if A[i]>max:
                    max = A[i]
                if A[i+1]<min:
                    min = A[i+1]
    else:
        if A[0]<A[1]:
            min = A[0]
            max = A[1]
            for i in range(2, len(A), 2):
                if A[i] < A[i + 1]:
                    if A[i] < min:
                        min = A[i]
                    if A[i + 1] > max:
                        max = A[i + 1]
                else:
                    if A[i] > max:
                        max = A[i]
                    if A[i + 1] < min:
                        min = A[i + 1]
        else:
            min = A[1]
            max = A[0]
            for i in range(2, len(A), 2):
                if A[i] < A[i + 1]:
                    if A[i] < min:
                        min = A[i]
                    if A[i + 1] > max:
                        max = A[i + 1]
                else:
                    if A[i] > max:
                        max = A[i]
                    if A[i + 1] < min:
                        min = A[i + 1]
    return min,max

arr = [9,8,1,5,6,10]
print get_max_and_min2(arr)

# if len(arr)%2:
#     print '奇数'
# else:
#     print '偶数'