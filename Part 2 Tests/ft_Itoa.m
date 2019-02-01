//
//  ft_Itoa.m
//  ft
//
//  Created by Liewe Gutter on 22/01/2019.
//  Copyright © 2019 Liewe Gutter. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "libft.h"
@interface ft_Itoa : XCTestCase

@end

@implementation ft_Itoa

- (void)testPositiveNumber {
	char *str = (char *)malloc(4);
	char *ret;
	int i = 0;
	
	str = "123";
	ret = ft_itoa(123);
	while (i < 4)
	{
		XCTAssert(str[i] == ret[i], @"pos %i is incorrect, expected %c, returned %c", i, str[i], ret[i]);
		i++;
	}
	free (ret); //if this gives SIGABORT, you did not allocate your return string properly.
}

- (void)testNegativeNumber {
	char *str = (char *)malloc(5);
	char *ret;
	int i = 0;
	
	str = "-123";
	ret = ft_itoa(-123);
	while (i < 5)
	{
		XCTAssert(str[i] == ret[i], @"pos is incorrect, expected %c, returned %c", str[i], ret[i]);
		i++;
	}
	free (ret); //if this gives SIGABORT, you did not allocate your return string properly.
}

- (void)testZero {
	char *str = (char *)malloc(1);
	char *ret;
	int i = 0;

	str = "0";
	ret = ft_itoa(0);
	while (i < 1)
	{
		XCTAssert(str[i] == ret[i], @"pos is incorrect, expected %c, returned %c", str[i], ret[i]);
		i++;
	}
	free (ret); //if this gives SIGABORT, you did not allocate your return string properly.
}

- (void)testMaxInteger {
	char *str = (char *)malloc(11);
	char *ret;
	int i = 0;

	str = "2147483647";
	ret = ft_itoa(2147483647);
	while (i < 11)
	{
		XCTAssert(str[i] == ret[i], @"pos is incorrect, expected %c, returned %c", str[i], ret[i]);
		i++;
	}
	free (ret); //if this gives SIGABORT, you did not allocate your return string properly.
}

- (void)testMinInteger {
	char *str = (char *)malloc(12);
	char *ret;
	int i = 0;

	str = "-2147483648";
	ret = ft_itoa(-2147483648);
	while (i < 12)
	{
		XCTAssert(str[i] == ret[i], @"pos is incorrect, expected %c, returned %c", str[i], ret[i]);
		i++;
	}
	free (ret); //if this gives SIGABORT, you did not allocate your return string properly.
}

- (void)testNegativeMaxInteger {
	char *str = (char *)malloc(12);
	char *ret;
	int i = 0;

	str = "-2147483647";
	ret = ft_itoa(-2147483647);
	while (i < 12)
	{
		XCTAssert(str[i] == ret[i], @"pos is incorrect, expected %c, returned %c", str[i], ret[i]);
		i++;
	}
	free (ret); //if this gives SIGABORT, you did not allocate your return string properly.
}

@end
