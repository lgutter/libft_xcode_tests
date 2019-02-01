//
//  ft_MemCpy.m
//  ft
//
//  Created by Liewe Gutter on 25/01/2019.
//  Copyright © 2019 Liewe Gutter. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "libft.h"

@interface ft_MemCpy : XCTestCase

@end

@implementation ft_MemCpy

- (void)testMemCpyWithPartOfSimpleString {
	char *str1 = (char *)malloc(sizeof(char) * 10);
	char *str2 = (char *)malloc(sizeof(char) * 10);
	str1 = "123456789";
	str2 = "123456789";
	char *dst1 = (char *)malloc(sizeof(char) * 6);
	char *dst2 = (char *)malloc(sizeof(char) * 6);
	char *check1;
	char *check2;
	size_t len = 6;
	int i = 0;
	check1 = memcpy(dst1, str1, len);
	check2 = ft_memcpy(dst2, str2, len);
	XCTAssert(check1 == dst1, @"memcpy did not return expected address. returned %p, expected %p.", check1, dst1);
	XCTAssert(check2 == dst2, @"ft_memcpy did not return expected address. returned %p, expected %p.", check2, dst2);
	while (i < 6)
	{
		XCTAssert(check1[i] == check2[i], @"incorrect value on pos %i, expected %c, returned %c", i, check1[i], check2[i]);
		i++;
	}
}

- (void)testMemCpyWithCompleteSimpleString {
	char *str1 = (char *)malloc(sizeof(char) * 10);
	char *str2 = (char *)malloc(sizeof(char) * 10);
	str1 = "123456789";
	str2 = "123456789";
	char *dst1 = (char *)malloc(sizeof(char) * 10);
	char *dst2 = (char *)malloc(sizeof(char) * 10);
	char *check1;
	char *check2;
	size_t len = 10;
	int i = 0;
	check1 = memcpy(dst1, str1, len);
	check2 = ft_memcpy(dst2, str2, len);
	XCTAssert(check1 == dst1, @"memcpy did not return expected address. returned %p, expected %p.", check1, dst1);
	XCTAssert(check2 == dst2, @"ft_memcpy did not return expected address. returned %p, expected %p.", check2, dst2);
	while (i < 10)
	{
		XCTAssert(check1[i] == check2[i], @"incorrect value on pos %i, expected %c, returned %c", i, check1[i], check2[i]);
		i++;
	}
}

- (void)testMemCpyWithEmptyString {
	char *str1 = (char *)malloc(sizeof(char) * 1);
	char *str2 = (char *)malloc(sizeof(char) * 1);
	str1 = "";
	str2 = "";
	char *dst1 = (char *)malloc(sizeof(char) * 1);
	char *dst2 = (char *)malloc(sizeof(char) * 1);
	char *check1;
	char *check2;
	size_t len = 1;
	int i = 0;
	check1 = memcpy(dst1, str1, len);
	check2 = ft_memcpy(dst2, str2, len);
	XCTAssert(check1 == dst1, @"memcpy did not return expected address. returned %p, expected %p.", check1, dst1);
	XCTAssert(check2 == dst2, @"ft_memcpy did not return expected address. returned %p, expected %p.", check2, dst2);
	while (i < 1)
	{
		XCTAssert(check1[i] == check2[i], @"incorrect value on pos %i, expected %c, returned %c", i, check1[i], check2[i]);
		i++;
	}
}

- (void)testMemCpyWithMoreThanSimpleString {
	char *str1 = (char *)malloc(sizeof(char) * 10);
	char *str2 = (char *)malloc(sizeof(char) * 10);
	str1 = "123456789";
	str2 = "123456789";
	char *dst1 = (char *)malloc(sizeof(char) * 12);
	char *dst2 = (char *)malloc(sizeof(char) * 12);
	char *check1;
	char *check2;
	size_t len = 12;
	int i = 0;
	check1 = memcpy(dst1, str1, len);
	check2 = ft_memcpy(dst2, str2, len);
	XCTAssert(check1 == dst1, @"memcpy did not return expected address. returned %p, expected %p.", check1, dst1);
	XCTAssert(check2 == dst2, @"ft_memcpy did not return expected address. returned %p, expected %p.", check2, dst2);
	while (i < 10)
	{
		XCTAssert(check1[i] == check2[i], @"incorrect value on pos %i, expected %c, returned %c", i, check1[i], check2[i]);
		i++;
	}
}

- (void)testMemCpyWithCompleteWeirdString {
	char *str1 = (char *)malloc(sizeof(char) * 10);
	char *str2 = (char *)malloc(sizeof(char) * 10);
	str1 = "%$ \t\e\n @#";
	str2 = "%$ \t\e\n @#";
	char *dst1 = (char *)malloc(sizeof(char) * 10);
	char *dst2 = (char *)malloc(sizeof(char) * 10);
	char *check1;
	char *check2;
	size_t len = 10;
	int i = 0;
	check1 = memcpy(dst1, str1, len);
	check2 = ft_memcpy(dst2, str2, len);
	XCTAssert(check1 == dst1, @"memcpy did not return expected address. returned %p, expected %p.", check1, dst1);
	XCTAssert(check2 == dst2, @"ft_memcpy did not return expected address. returned %p, expected %p.", check2, dst2);
	while (i < 10)
	{
		XCTAssert(check1[i] == check2[i], @"incorrect value on pos %i, expected %c, returned %c", i, check1[i], check2[i]);
		i++;
	}
}


@end
