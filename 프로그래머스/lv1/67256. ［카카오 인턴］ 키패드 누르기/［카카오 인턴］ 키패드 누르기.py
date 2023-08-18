def solution(numbers, hand):
    import math
    answer = ''
    l_loc = 10
    r_loc = 12
    
    for num in numbers:
        if num == 0:
            num = 11
            
        if num in [1, 4, 7]:
            answer += 'L'
            l_loc = num
        elif num in [3, 6, 9]:
            answer += 'R'
            r_loc = num
            
        else:
            # 1, 2, 5, 8, 4, 7, 10, 3, 6, 9
            # 0 -> 0
            # 1, 3 -> 1
            # 2, 4, 6 -> 2
            # 5, 7, 9 -> 3
            # 8, 10 -> 4
            a = abs(num - l_loc)
            b = abs(num - r_loc)
            
            if a == 0:
                a = 0
            elif a in (1, 3):
                a = 1
            elif a in (2, 4, 6):
                a = 2
            elif a in (5, 7, 9):
                a = 3
            else:
                a = 4
            
            if b == 0:
                b = 0
            elif b in (1, 3):
                b = 1
            elif b in (2, 4, 6):
                b = 2
            elif b in (5, 7, 9):
                b = 3
            else:
                b = 4
                
            if a < b:
                answer += 'L'
                l_loc = num
            elif a > b:
                answer += 'R'
                r_loc = num
            else:
                if hand == 'right':
                    answer += 'R'
                    r_loc = num
                else:
                    answer += 'L'
                    l_loc = num
    return answer