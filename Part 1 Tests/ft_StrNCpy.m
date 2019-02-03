//
//  ft_StrNCpy.m
//  ft
//
//  Created by Liewe Gutter on 30/01/2019.
//  Copyright © 2019 Liewe Gutter. All rights reserved.
//

#import <XCTest/XCTest.h>
#include "libft.h"

@interface ft_StrNCpy : XCTestCase

@end

@implementation ft_StrNCpy

- (void)testStrNCpyWithPartOfSimpleString {
	int len = 6;
	int i = 0;
	char *str = "123456789";
	char *dst1 = (char *)malloc(sizeof(char) * len);
	char *dst2 = (char *)malloc(sizeof(char) * len);
	char *check1;
	char *check2;
	check1 = strncpy(dst1, str, len);
	check2 = ft_strncpy(dst2, str, len);
	XCTAssert(check1 == dst1, @"strncpy did not return expected address. returned %p, expected %p.", check1, dst1);
	XCTAssert(check2 == dst2, @"ft_strncpy did not return expected address. returned %p, expected %p.", check2, dst2);
	while (i < len)
	{
		XCTAssert(check1[i] == check2[i], @"incorrect value on pos %i, expected %c, returned %c", i, check1[i], check2[i]);
		i++;
	}
}

- (void)testStrNCpyWithCompleteSimpleString {
	int len = 10;
	int i = 0;
	char *str = "123456789";
	char *dst1 = (char *)malloc(sizeof(char) * len);
	char *dst2 = (char *)malloc(sizeof(char) * len);
	char *check1;
	char *check2;
	check1 = strncpy(dst1, str, len);
	check2 = ft_strncpy(dst2, str, len);
	XCTAssert(check1 == dst1, @"strncpy did not return expected address. returned %p, expected %p.", check1, dst1);
	XCTAssert(check2 == dst2, @"ft_strncpy did not return expected address. returned %p, expected %p.", check2, dst2);
	while (i < len)
	{
		XCTAssert(check1[i] == check2[i], @"incorrect value on pos %i, expected %c, returned %c", i, check1[i], check2[i]);
		i++;
	}
}

- (void)testStrNCpyWithEmptyString {
	int len = 5;
	int i = 0;
	char *str = "";
	char *dst1 = (char *)malloc(sizeof(char) * len);
	char *dst2 = (char *)malloc(sizeof(char) * len);
	char *check1;
	char *check2;
	check1 = strncpy(dst1, str, len);
	check2 = ft_strncpy(dst2, str, len);
	XCTAssert(check1 == dst1, @"strncpy did not return expected address. returned %p, expected %p.", check1, dst1);
	XCTAssert(check2 == dst2, @"ft_strncpy did not return expected address. returned %p, expected %p.", check2, dst2);
	while (i < len)
	{
		XCTAssert(check1[i] == check2[i], @"incorrect value on pos %i, expected %c, returned %c", i, check1[i], check2[i]);
		i++;
	}
}

- (void)testStrNCpyWithMoreThanSimpleString {
	int len = 12;
	int i = 0;
	char *str = "123456789";
	char *dst1 = ft_strnew(len);
	char *dst2 = ft_strnew(len);
	char *check1;
	char *check2;
	check1 = strncpy(dst1, str, len);
	check2 = ft_strncpy(dst2, str, len);
	XCTAssert(check1 == dst1, @"strncpy did not return expected address. returned %p, expected %p.", check1, dst1);
	XCTAssert(check2 == dst2, @"ft_strncpy did not return expected address. returned %p, expected %p.", check2, dst2);
	while (i < len)
	{
		XCTAssert(check1[i] == check2[i], @"incorrect value on pos %i, expected %c, returned %c", i, check1[i], check2[i]);
		i++;
	}
}

- (void)testStrNCpyWithCompleteWeirdString {
	int len = 10;
	int i = 0;
	char *str = "%$ \t\e\n @#";
	char *dst1 = (char *)malloc(sizeof(char) * len);
	char *dst2 = (char *)malloc(sizeof(char) * len);
	char *check1;
	char *check2;
	check1 = strncpy(dst1, str, len);
	check2 = ft_strncpy(dst2, str, len);
	XCTAssert(check1 == dst1, @"strncpy did not return expected address. returned %p, expected %p.", check1, dst1);
	XCTAssert(check2 == dst2, @"ft_strncpy did not return expected address. returned %p, expected %p.", check2, dst2);
	while (i < len)
	{
		XCTAssert(check1[i] == check2[i], @"incorrect value on pos %i, expected %c, returned %c", i, check1[i], check2[i]);
		i++;
	}
}

- (void)testIfBufferIsPaddedWithTermZero {
	int len = 10;
	int i = 4;
	char *str = "test";
	char *dst1 = (char *)malloc(sizeof(char) * len);
	char *dst2 = (char *)malloc(sizeof(char) * len);
	memset(dst1, '*', len);
	memset(dst2, '*', len);
	char *check1;
	char *check2;
	check1 = strncpy(dst1, str, len);
	check2 = ft_strncpy(dst2, str, len);
	XCTAssert(check1 == dst1, @"strncpy did not return expected address. returned %p, expected %p.", check1, dst1);
	XCTAssert(check2 == dst2, @"ft_strncpy did not return expected address. returned %p, expected %p.", check2, dst2);
	while (i < len)
	{
		XCTAssert(check1[i] == check2[i], @"incorrect value on pos %i, expected %c, returned %c", i, check1[i], check2[i]);
		i++;
	}
}

@end
