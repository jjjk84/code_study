def solution(dartResult):
    answer = 0
    temp = []
    import re
    # 스타상 : 해당 점수와 바로 전에 얻은 점수를 각각 2배, 다른 효과(스타, 아차)와 중첩 가능
    # 아차상 : 해당 점수 마이너스
    # 3번의 기회
    
    num_list = re.split(r'[^0-9]', dartResult)[:-1]
    bonus_option_list = re.findall(r'[\D]', dartResult)
    
    for num, bonus_option in zip(num_list, bonus_option_list):
        if num == '':
            if bonus_option == '*':
                if len(temp) > 1:
                    temp[-1] *= 2
                    temp[-2] *= 2
                else:
                    temp[-1] *= 2
            else:
                temp[-1] *= -1  
        else:
            num = int(num)
            if bonus_option == 'D':
                num **= 2
            elif bonus_option == 'T':
                num **= 3
            temp.append(num)
    
    answer = sum(temp)
    return answer