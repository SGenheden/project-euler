

def fibbonaci_solver(a, b, limit, list):
    c = a + b
    if c > limit:
        return
    if c % 2 == 0:
        list.append(c)
    fibbonaci_solver(b, c, limit, list)


def solution(limit):
    even_numbers = []
    fibbonaci_solver(1, 1, limit, even_numbers)
    return sum(even_numbers)


if __name__ == "__main__":
    print(f"The solution is {solution(4E6)}")
