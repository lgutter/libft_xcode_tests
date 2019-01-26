//
//  ft_MemCCpy.m
//  ft
//
//  Created by Liewe Gutter on 25/01/2019.
//  Copyright © 2019 Liewe Gutter. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "libft.h"

@interface ft_MemCCpy : XCTestCase

@end

@implementation ft_MemCCpy

- (void)testMemCpyWithPartOfSimpleStringWithDelimOnLen {
	char *str1 = (char *)malloc(sizeof(char) * 10);
	str1 = "123456*89";
	size_t len = 6;
	char *dst1 = (char *)malloc(sizeof(char) * len);
	char *dst2 = (char *)malloc(sizeof(char) * len);
	void *check1;
	void *check2;
	int i = 0;
	check1 = memccpy(dst1, str1, '*', len);
	check2 = ft_memccpy(dst2, str1, '*', len);
	XCTAssert(check1 == NULL, @"memccpy did not return NULL when not finding the delim, returned %p instead of %p", check1, &dst1[7]);
	XCTAssert(check2 == NULL, @"ft_memccpy did not return NULL when not finding the delim, returned %p instead of %p", check2, &dst1[7]);
	while (i < 7)
	{
		XCTAssert(dst1[i] == dst2[i], @"incorrect value on pos %i, expected %c, returned %c", i, dst1[i], dst2[i]);
		i++;
	}
}

- (void)testMemCCpyWithPartOfSimpleStringWhenFindingDelim {
	char *str1 = (char *)malloc(sizeof(char) * 10);
	str1 = "123456*89";
	size_t len = 8;
	char *dst1 = (char *)malloc(sizeof(char) * len);
	char *dst2 = (char *)malloc(sizeof(char) * len);
	void *check1;
	void *check2;
	int i = 0;
	check1 = memccpy(dst1, str1, '*', len);
	check2 = ft_memccpy(dst2, str1, '*', len);
	XCTAssert(check1 == &dst1[7], @"memccpy did not return address of byte after delim, returned %p instead of %p", check1, &dst1[7]);
	XCTAssert(check2 == &dst2[7], @"ft_memccpy did not return address of byte after delim, returned %p instead of %p", check2, &dst1[7]);
	while (i < 8)
	{
		XCTAssert(dst1[i] == dst2[i], @"incorrect value on pos %i, expected %c, returned %c", i, dst1[i], dst2[i]);
		i++;
	}
}

- (void)testMemCCpyWithJustDelimAndGoingTooFar {
	char *str1 = (char *)malloc(sizeof(char) * 2);
	str1 = "*";
	size_t len = 2;
	char *dst1 = (char *)malloc(sizeof(char) * len);
	char *dst2 = (char *)malloc(sizeof(char) * len);
	void *check1;
	void *check2;
	int i = 0;
	check1 = memccpy(dst1, str1, '*', len);
	check2 = ft_memccpy(dst2, str1, '*', len);
	XCTAssert(check1 == &dst1[1], @"memccpy did not return address of byte after delim, returned %p instead of %p", check1, &dst1[7]);
	XCTAssert(check2 == &dst2[1], @"ft_memccpy did not return address of byte after delim, returned %p instead of %p", check2, &dst1[7]);
	while (i < 1)
	{
		XCTAssert(dst1[i] == dst2[i], @"incorrect value on pos %i, expected %c, returned %c", i, dst1[i], dst2[i]);
		i++;
	}
}

- (void)testMemCCpyWithWeirdCharsWithoutDelim {
	char *str1 = (char *)malloc(sizeof(char) * 10);
	str1 = "%$ \t\e\n @#";
	size_t len = 10;
	char *dst1 = (char *)malloc(sizeof(char) * len);
	char *dst2 = (char *)malloc(sizeof(char) * len);
	void *check1;
	void *check2;
	int i = 0;
	check1 = memccpy(dst1, str1, '*', len);
	check2 = ft_memccpy(dst2, str1, '*', len);
	XCTAssert(check1 == NULL, @"memcpy did not return NULL when not finding the delim, returned %p instead", check1);
	XCTAssert(check2 == NULL, @"ft_memcpy did not return NULL when not finding the delim, returned %p instead", check2);
	while (i < 10)
	{
		XCTAssert(dst1[i] == dst2[i], @"incorrect value on pos %i, expected %c, returned %c", i, dst1[i], dst2[i]);
		i++;
	}
}

- (void)testMemCCpyWithPartOfWeirdStringWhenFindingDelim {
	char *str1 = (char *)malloc(sizeof(char) * 10);
	str1 = "%$ \t\e\n\0@`#";
	size_t len = 10;
	char *dst1 = (char *)malloc(sizeof(char) * len);
	char *dst2 = (char *)malloc(sizeof(char) * len);
	void *check1;
	void *check2;
	int i = 0;
	check1 = memccpy(dst1, str1, '\0', len);
	check2 = ft_memccpy(dst2, str1, '\0', len);
	XCTAssert(check1 == &dst1[7], @"memcpy did not return address of byte after delim, returned %p instead of %p", check1, &dst1[7]);
	XCTAssert(check2 == &dst2[7], @"ft_memcpy did not return address of byte after delim, returned %p instead of %p", check2, &dst1[7]);
	while (i < 8)
	{
		XCTAssert(dst1[i] == dst2[i], @"incorrect value on pos %i, expected %c, returned %c", i, dst1[i], dst2[i]);
		i++;
	}
}

@end
