def solution(n, arr1, arr2):
    answer = []
    
    # 비트 연산.. https://wikidocs.net/121166
    for a1, a2 in zip(arr1, arr2):
        temp = bin(a1 | a2)[2:] #ob 제거
        temp = temp.zfill(n)
        temp = temp.replace('1', '#').replace('0', ' ')
        answer.append(temp)
        
# 시간초과 답안
#     temp1 = []
#     temp2 = []
    
#     def make_binary(arr, temp):
#         for num in arr:
#             string = ''
#             while num != 1:
#                 if num % 2 == 0:
#                     string = '0' + string
#                 else:
#                     string = '1' + string
#                 num //= 2

#             string = '1' + string
#             string.zfill(n)
#             temp.append(string)
#         return temp
        
#     make_binary(arr1, temp1)
#     make_binary(arr2, temp2)
    
# temp = [int(x)+int(y) for x, y in zip(temp1, temp2)]
    
#     for ans in temp:
#         ans_str = str(ans)
#         if len(ans_str) < n:
#             ans_str = ans_str.zfill(n)
            
#         ans_str = ans_str.replace('1', '#')
#         ans_str = ans_str.replace('2', '#')
#         ans_str = ans_str.replace('0', ' ')
            
#         answer.append(ans_str)
    
    
                
    
    return answer