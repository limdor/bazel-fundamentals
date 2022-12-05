#include "sum_lib.h"
#include <gtest/gtest.h>

TEST(Sum, SumNegativeValues)
{
    EXPECT_EQ(-5, sum_lib::sum(-2, -5));
}

TEST(Sum, SumPositiveValues)
{
    EXPECT_EQ(5, sum_lib::sum(1, 5));
}
