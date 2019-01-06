

def multiple_of_three_or_five(x):
    return x % 3 == 0 or x % 5 == 0


def solution(limit):
    return sum(x for x in range(1, limit) if multiple_of_three_or_five(x))


if __name__ == "__main__":
    print(f"The solution is {solution(1000)}")
