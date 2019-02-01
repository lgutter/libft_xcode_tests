//
//  ft_Atoi.m
//  ft
//
//  Created by Liewe Gutter on 31/01/2019.
//  Copyright © 2019 Liewe Gutter. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "libft.h"

@interface ft_Atoi : XCTestCase

@end

@implementation ft_Atoi

- (void)testWithZero {
	char str[] = "0";
	int	ret1;
	int ret2;

	ret1 = atoi(str);
	ret2 = ft_atoi(str);
	XCTAssert(ret1 == ret2, @"ft_atoi failed with zero. Expected %i, returned %i", ret1, ret2);
}

- (void)testWithSimpleNumber {
	char str[] = "103";
	int	ret1;
	int ret2;

	ret1 = atoi(str);
	ret2 = ft_atoi(str);
	XCTAssert(ret1 == ret2, @"ft_atoi failed with just a normal number?! Expected %i, returned %i", ret1, ret2);
}

- (void)testWithSimpleNegativeNumber {
	char str[] = "-130";
	int	ret1;
	int ret2;

	ret1 = atoi(str);
	ret2 = ft_atoi(str);
	XCTAssert(ret1 == ret2, @"ft_atoi failed with a normal negative number. Expected %i, returned %i", ret1, ret2);
}

- (void)testWithMaxInteger {
	char str[] = "2147483647";
	int	ret1;
	int ret2;

	ret1 = atoi(str);
	ret2 = ft_atoi(str);
	XCTAssert(ret1 == ret2, @"ft_atoi failed with maximum integer. Expected %i, returned %i", ret1, ret2);
}

- (void)testWithMaxIntegerPlusOne {
	char str[] = "2147483648";
	int	ret1;
	int ret2;

	ret1 = atoi(str);
	ret2 = ft_atoi(str);
	XCTAssert(ret1 == ret2, @"ft_atoi failed with maximum integer. Expected %i, returned %i", ret1, ret2);
}

- (void)testWithMinInteger {
	char str[] = "-2147483648";
	int	ret1;
	int ret2;

	ret1 = atoi(str);
	ret2 = ft_atoi(str);
	XCTAssert(ret1 == ret2, @"ft_atoi failed with minimum integer. Expected %i, returned %i", ret1, ret2);
}

- (void)testWithWhitespaceBeforeSimpleNumber {
	char str[] = " 	    			\v \n 123";
	int	ret1;
	int ret2;

	ret1 = atoi(str);
	ret2 = ft_atoi(str);
	XCTAssert(ret1 == ret2, @"ft_atoi failed with whitespace before a simple number. Expected %i, returned %i", ret1, ret2);
}

- (void)testWithPlusSignBeforeSimpleNumber {
	char str[] = "+123";
	int	ret1;
	int ret2;

	ret1 = atoi(str);
	ret2 = ft_atoi(str);
	XCTAssert(ret1 == ret2, @"ft_atoi failed with a plus sign before a simple number. Expected %i, returned %i", ret1, ret2);
}

- (void)testWithPlusSignAndMinusSignBeforeSimpleNumber {
	char str[] = "+-123";
	int	ret1;
	int ret2;

	ret1 = atoi(str);
	ret2 = ft_atoi(str);
	XCTAssert(ret1 == ret2, @"ft_atoi failed with a plus and minus sign before a simple number. Expected %i, returned %i", ret1, ret2);
}

- (void)testWithTwoPlusSignsBeforeSimpleNumber {
	char str[] = "++123";
	int	ret1;
	int ret2;

	ret1 = atoi(str);
	ret2 = ft_atoi(str);
	XCTAssert(ret1 == ret2, @"ft_atoi failed with two plus signs before a simple number. Expected %i, returned %i", ret1, ret2);
}

- (void)testWithTwoMinusSignsBeforeSimpleNumber {
	char str[] = "--123";
	int	ret1;
	int ret2;

	ret1 = atoi(str);
	ret2 = ft_atoi(str);
	XCTAssert(ret1 == ret2, @"ft_atoi failed with two minus signs before a simple number. Expected %i, returned %i", ret1, ret2);
}

- (void)testWithWhitespaceInteruptingSimpleNumber {
	char str[] = "123	456";
	int	ret1;
	int ret2;

	ret1 = atoi(str);
	ret2 = ft_atoi(str);
	XCTAssert(ret1 == ret2, @"ft_atoi failed with whitespace interupting simple number. Expected %i, returned %i", ret1, ret2);
}

- (void)testWithWhitespaceAfterSimpleNumber {
	char str[] = "123 	    			\v \n ";
	int	ret1;
	int ret2;

	ret1 = atoi(str);
	ret2 = ft_atoi(str);
	XCTAssert(ret1 == ret2, @"ft_atoi failed with whitespace after a simple number. Expected %i, returned %i", ret1, ret2);
}

- (void)testWithLettersBeforeSimpleNumber {
	char str[] = "abc123";
	int	ret1;
	int ret2;

	ret1 = atoi(str);
	ret2 = ft_atoi(str);
	XCTAssert(ret1 == ret2, @"ft_atoi failed with letters before a simple number. Expected %i, returned %i", ret1, ret2);
}

- (void)testWithLettersAfterSimpleNumber {
	char str[] = "123abc";
	int	ret1;
	int ret2;

	ret1 = atoi(str);
	ret2 = ft_atoi(str);
	XCTAssert(ret1 == ret2, @"ft_atoi failed with letters after a simple number. Expected %i, returned %i", ret1, ret2);
}

- (void)testWithExtendedAsciiPlusWhiteSpaceBeforeSimpleNumber {
	char *str = "\xe3 123";
	int	ret1;
	int ret2;

	ret1 = atoi(str);
	ret2 = ft_atoi(str);
	XCTAssert(ret1 == ret2, @"ft_atoi failed with letters before a simple number. Expected %i, returned %i", ret1, ret2);
}

//THE NEXT TESTS ARE FOR NUMBERS OUTSIDE THE RANGE OF INT.
- (void)testWithNumberOverMaxInt{
	char str[] = "7223372036854775807";
	int	ret1;
	int ret2;

	ret1 = atoi(str);
	ret2 = ft_atoi(str);
	XCTAssert(ret1 == ret2, @"ft_atoi failed with number over maximum integer. Expected %i, returned %i", ret1, ret2);
}

- (void)testWithNumberOverMaxIntWithPlusSign{
	char str[] = "+7223372036854775807";
	int	ret1;
	int ret2;

	ret1 = atoi(str);
	ret2 = ft_atoi(str);
	XCTAssert(ret1 == ret2, @"ft_atoi failed with number over maximum integer and a plus sign. Expected %i, returned %i", ret1, ret2);
}

- (void)testWithMinLong {
	char str[] = "-9223372036854775808";
	int	ret1;
	int ret2;

	ret1 = atoi(str);
	ret2 = ft_atoi(str);
	XCTAssert(ret1 == ret2, @"ft_atoi failed with min long. Expected %i, returned %i", ret1, ret2);
}

- (void)testWithMinLongMinusOne {
	char str[] = "-9223372036854775809";
	int	ret1;
	int ret2;

	ret1 = atoi(str);
	ret2 = ft_atoi(str);
	XCTAssert(ret1 == ret2, @"ft_atoi failed with min long minus one. Expected %i, returned %i", ret1, ret2);
}

- (void)testWithNumberUnderMinLong {
	char str[] = "-12446744073709551615";
	int	ret1;
	int ret2;

	ret1 = atoi(str);
	ret2 = ft_atoi(str);
	XCTAssert(ret1 == ret2, @"ft_atoi failed with value under min long. Expected %i, returned %i", ret1, ret2);
}

- (void)testWithNegativeMaxUnsignedLong {
	char str[] = "-18446744073709551615";
	int	ret1;
	int ret2;

	ret1 = atoi(str);
	ret2 = ft_atoi(str);
	XCTAssert(ret1 == ret2, @"ft_atoi failed with max unsigned long. Expected %i, returned %i", ret1, ret2);
}

- (void)testWithNegativeNumberOverMaxUnsignedLong {
	char str[] = "-18446744073709557753";
	int	ret1;
	int ret2;

	ret1 = atoi(str);
	ret2 = ft_atoi(str);
	XCTAssert(ret1 == ret2, @"ft_atoi failed with negative value over max long. Expected %i, returned %i", ret1, ret2);
}

- (void)testWithMaxLongMinusOne {
	char str[] = "9223372036854775806";
	int	ret1;
	int ret2;

	ret1 = atoi(str);
	ret2 = ft_atoi(str);
	XCTAssert(ret1 == ret2, @"ft_atoi failed with max long minus one. Expected %i, returned %i", ret1, ret2);
}

- (void)testWithMaxLong {
	char str[] = "9223372036854775807";
	int	ret1;
	int ret2;

	ret1 = atoi(str);
	ret2 = ft_atoi(str);
	XCTAssert(ret1 == ret2, @"ft_atoi failed with max long. Expected %i, returned %i", ret1, ret2);
}

- (void)testWithMaxLongPlusOne {
	char str[] = "9223372036854775807";
	int	ret1;
	int ret2;

	ret1 = atoi(str);
	ret2 = ft_atoi(str);
	XCTAssert(ret1 == ret2, @"ft_atoi failed with max long plus one. Expected %i, returned %i", ret1, ret2);
}

- (void)testWithNegativeMaxLong {
	char str[] = "-9223372036854775807";
	int	ret1;
	int ret2;

	ret1 = atoi(str);
	ret2 = ft_atoi(str);
	XCTAssert(ret1 == ret2, @"ft_atoi failed with negative max long. Expected %i, returned %i", ret1, ret2);
}

- (void)testWithNumberOverMaxLong {
	char str[] = "12446744083709551615";
	int	ret1;
	int ret2;

	ret1 = atoi(str);
	ret2 = ft_atoi(str);
	XCTAssert(ret1 == ret2, @"ft_atoi failed with value over max long. Expected %i, returned %i", ret1, ret2);
}

- (void)testWithMaxUnsignedLong {
	char str[] = "18446744073709551615";
	int	ret1;
	int ret2;

	ret1 = atoi(str);
	ret2 = ft_atoi(str);
	XCTAssert(ret1 == ret2, @"ft_atoi failed with max unsigned long. Expected %i, returned %i", ret1, ret2);
}

- (void)testWithNumberOverMaxUnsignedLong {
	char str[] = "18446744073709557753";
	int	ret1;
	int ret2;

	ret1 = atoi(str);
	ret2 = ft_atoi(str);
	XCTAssert(ret1 == ret2, @"ft_atoi failed with value over max long. Expected %i, returned %i", ret1, ret2);
}

@end
