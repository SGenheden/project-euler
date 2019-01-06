
def solution(ndigits):
    start = int('1'+'0'*(ndigits-1))
    end = int('9'+'9'*(ndigits-1))
    palindrom = 0
    for n1 in range(start, end+1):
        for n2 in range(start, end+2):
            prod = n1*n2
            prod_str = str(prod)
            if prod_str == prod_str[::-1]:
                palindrom = max(prod, palindrom)
    return palindrom


if __name__ == "__main__":
    print(f"The solution is {solution(3)}")
