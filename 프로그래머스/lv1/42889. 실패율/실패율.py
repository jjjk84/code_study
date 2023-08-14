def solution(N, stages):
    answer = []
    temp= {}
    num_challenge = len(stages)
    
    for i in range(1, N+1):
        fail_cnt = stages.count(i)
        try:
            fail_ratio = fail_cnt / num_challenge
            num_challenge -= fail_cnt
            temp[i] = fail_ratio
        except ZeroDivisionError:
            temp[i] = 0
    temp = sorted(temp.items(), key = lambda x: x[-1], reverse=True)
    
    for i in temp:
        answer.append(i[0])
    
    return answer