#include "sum_rounding.h"
#include <gtest/gtest.h>

TEST(Sum, SumNegativeValues)
{
    EXPECT_EQ(-5, sum_rounding::sum(-2, -5));
}

TEST(Sum, SumPositiveValues)
{
    EXPECT_EQ(5, sum_rounding::sum(1, 5));
}
