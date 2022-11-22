#include "my_other_lib.h"
#include <gtest/gtest.h>

TEST(Substract, SubstractNegativeValues)
{
    EXPECT_EQ(3, my_other_lib::substract(-2, -5));
}

TEST(Substract, SubstractPositiveValues)
{
    EXPECT_EQ(-4, my_other_lib::substract(1, 5));
}
