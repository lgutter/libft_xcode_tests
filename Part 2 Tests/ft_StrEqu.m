//
//  ft_StrEqu.m
//  ft
//
//  Created by Liewe Gutter on 17/01/2019.
//  Copyright © 2019 Liewe Gutter. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "libft.h"

@interface ft_StrEqu : XCTestCase

@end

@implementation ft_StrEqu

- (void)testIfMatchingStringsReturn1 {
	char *str1;
	char *str2;
	int ret;

	str1 = (char *)malloc(sizeof(char) * 10);
	str1 = "Testerder";
	str2 = (char *)malloc(sizeof(char) * 10);
	str2 = "Testerder";
	ret = ft_strequ(str1, str2);
	XCTAssert(1 == ret, @"ft_strequ returns %i instead of 1 on matching strings.", ret);
}

- (void)testIfDifferentCharsInStringsReturn0 {
	char *str1;
	char *str2;
	int ret;

	str1 = (char *)malloc(sizeof(char) * 10);
	str2 = (char *)malloc(sizeof(char) * 10);
	str1 = "Testerder";
	str2 = "Testefder";
	ret = ft_strequ(str1, str2);
	XCTAssert(0 == ret, @"ft_strequ returns %i instead of 0 on non-matching strings.", ret);
}

- (void)testIfExtendedAsciiInStringsReturn0 {
	char *str1;
	char *str2 = "Teste\xe3\\der";
	int ret;

	str1 = (char *)malloc(sizeof(char) * 10);
	str1 = "Tester\\der";
	ret = ft_strequ(str1, str2);
	XCTAssert(0 == ret, @"ft_strequ returns %i instead of 0 on non-matching strings.", ret);
}

- (void)testIfFirstStringShorterReturn0 {
	char *str1;
	char *str2;
	int ret;

	str1 = (char *)malloc(sizeof(char) * 8);
	str2 = (char *)malloc(sizeof(char) * 10);
	str1 = "Testerd";
	str2 = "Testerder";
	ret = ft_strequ(str1, str2);
	XCTAssert(0 == ret, @"ft_strequ returns %i instead of 0 when first string is shorter.", ret);
}

- (void)testIfSecondStringShorterReturn0 {
	char *str1;
	char *str2;
	int ret;

	str1 = (char *)malloc(sizeof(char) * 10);
	str2 = (char *)malloc(sizeof(char) * 8);
	str1 = "Testerder";
	str2 = "Testerd";
	ret = ft_strequ(str1, str2);
	XCTAssert(0 == ret, @"ft_strequ returns %i instead of 0 when second string is shorter.", ret);
}

- (void)testIfTwoStringsOfSize1Return1 {
	char *str1;
	char *str2;
	int ret;

	str1 = (char *)malloc(sizeof(char) * 1);
	str2 = (char *)malloc(sizeof(char) * 1);
	str1 = "";
	str2 = "";
	ret = ft_strequ(str1, str2);
	XCTAssert(1 == ret, @"ft_strequ returns %i instead of 1 on two strings of length 1.", ret);
}

@end
