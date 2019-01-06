
def div_basis(number, basis, factors):
    while number % basis == 0:
        factors.append(basis)
        number = number // basis
    return number


def solution(number):
    inc = [4, 2, 4, 2, 4, 6, 2, 6]
    factors = []
    number = div_basis(number, 2, factors)
    number = div_basis(number, 3, factors)
    number = div_basis(number, 5, factors)

    k = 7
    i = 0
    while k * k <= number:
        if number % k == 0:
            factors.append(k)
            number = number // k
        else:
            k += inc[i]
            i += 1
            if i == len(inc):
                i = 0
    factors.append(number)
    # print(factors)
    return max(factors)


if __name__ == "__main__":
    print(f"The solution is {solution(600851475143)}")
    #import sys
    #print(solution(int(sys.argv[1])))
