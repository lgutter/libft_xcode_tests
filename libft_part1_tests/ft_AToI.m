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

- (void)testWithSimpleNumber {
	char str[] = "123";
	int	ret1;
	int ret2;

	ret1 = atoi(str);
	ret2 = ft_atoi(str);
	XCTAssert(ret1 == ret2, @"ft_atoi failed with just a normal number?! Expected %i, returned %i", ret1, ret2);
}

- (void)testWithMaxInteger {
	char str[] = "2147483647";
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

@end
