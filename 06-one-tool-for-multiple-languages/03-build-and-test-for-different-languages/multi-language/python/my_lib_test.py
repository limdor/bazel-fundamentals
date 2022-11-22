from python import my_lib


def test_sum_negative_values():
    assert my_lib.sum(-2, -5) == -7


def test_sum_positive_values():
    assert my_lib.sum(1, 5) == 6
