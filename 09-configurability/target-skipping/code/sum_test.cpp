#include "sum.h"
#include <gtest/gtest.h>

TEST(Sum, SumNegativeValues)
{
    EXPECT_EQ(-7, sum::sum(-2, -5));
}

TEST(Sum, SumPositiveValues)
{
    EXPECT_EQ(6, sum::sum(1, 5));
}
