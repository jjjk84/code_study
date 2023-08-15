def solution(s):
    answer = 0
    alpha_num_dict = {
        'zero' : '0',
        'one' : '1',
        'two' : '2',
        'three' : '3',
        'four' : '4',
        'five' : '5',
        'six' : '6',
        'seven' : '7',
        'eight' : '8',
        'nine' : '9',
    }
    for alpha, num in alpha_num_dict.items():
        s = s.replace(alpha, num)
    answer = int(s)
    return answer