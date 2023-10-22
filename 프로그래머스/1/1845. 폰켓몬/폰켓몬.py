def solution(nums):
    n = len(nums) / 2
    u = len((set(nums)))
    
    if n >= u:
        return u
    else:
        return n
        