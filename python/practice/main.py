#!/usr/bin/env python3
"""Practice Module."""

import logging
from typing import Union, Any, Tuple

logging.basicConfig(filename="text.txt", level=1)
success = logging.getLogger("success_logger")
failure = logging.getLogger("failure_logger")


def divide(x: Union[int, float], y: Union[int, float]) -> Union[int, float]:
    if y == 0:
        failure.warning("Cannot divide with 0")
        return 0
    success.info("Divide {} with {} successfully".format(x, y))
    return (x / y)


def process_inp(x: Any, y: Any) -> Tuple[Union[int, float, bool]]:
    """Processsed passed input."""
    try:
        x = float(x)
        y = float(y)
        return (x, y, True)
    except ValueError as e:
        failure.error(e.args[0])
        return (0, 0, False)


if __name__ == "__main__":
    loop = True
    while loop:
        x = input("Enter the Nominator value: ")
        y = input("Enter the Denominator value: ")

        x, y, cont = process_inp(x, y)
        if not cont:
            print("invalid arguments")
            continue
        print("Result: {}".format(divide(x, y)))
