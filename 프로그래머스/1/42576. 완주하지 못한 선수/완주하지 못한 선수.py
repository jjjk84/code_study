def solution(participant, completion):
    participant.sort()
    completion.sort()
    completion.extend([''])
    
    answer = ''
    for parti, comple in zip(participant, completion):
        if parti != comple:
            answer = parti
            break
            
    return answer 
        