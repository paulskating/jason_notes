# _*_ coding: utf-8 _*_

arr = [13,-3,-25,20,-3,-16,-23,18,20,-7,12,-5,-22,15,-4,7]


# 分治算法
def find_max_crossing_subarray(A,low,mid,high):
    sum = 0
    left_sum = A[mid]
    max_left = 0
    for i in range(mid,low-1,-1):
        sum = sum + A[i]
        if sum >= left_sum:
            left_sum = sum
            max_left = i

    sum = 0
    right_sum = A[mid+1]
    max_right = 0
    for j in range(mid+1,high+1):
        sum = sum + A[j]
        if sum >= right_sum:
            right_sum = sum
            max_right = j

    return (max_left,max_right,left_sum+right_sum)

def find_maximun_subarray(A,low,high):
    if high == low:
        return (low,high,A[low])
    else:
        mid = (low + high)/2
        left_low,left_high,left_sum = find_maximun_subarray(A,low,mid)
        right_low,right_high,right_sum = find_maximun_subarray(A,mid+1,high)
        cross_low,cross_high,cross_sum = find_max_crossing_subarray(A,low,mid,high)
        if left_sum>=right_sum and left_sum>=cross_sum:
            return (left_low,left_high,left_sum)
        elif right_sum>=left_sum and right_sum>=cross_sum:
            return (right_low,right_high,right_sum)
        else:
            return (cross_low,cross_high,cross_sum)

def find_max_subarray(A):
    lists_len = len(A)
    if len(A) == 1:
        return A
    else:
        left = 0
        right = lists_len - 1
        low,high,sum = find_maximun_subarray(A,left,right)
        return A[low:high+1]

# 迭代法,线性
def find_max_subarray_2(A):
	boundry = A[0]
	max_arr = A[0]
	for i in range(1,len(arr)):
		if boundry + arr[i] < arr[i]:
			boundry = arr[i]
		else:
			boundry = boundry + arr[i]
		if max_arr < boundry:
			max_arr = boundry
	return max_arr

print find_max_subarray(arr)
