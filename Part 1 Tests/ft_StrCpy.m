//
//  ft_StrCpy.m
//  ft
//
//  Created by Liewe Gutter on 30/01/2019.
//  Copyright © 2019 Liewe Gutter. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "libft.h"

@interface ft_StrCpy : XCTestCase

@end

@implementation ft_StrCpy


- (void)testStrCpyWithCompleteString {
	int len = 10;
	int i = 0;
	char *str = "123456789";
	char *dst1 = (char *)malloc(sizeof(char) * len);
	char *dst2 = (char *)malloc(sizeof(char) * len);
	char *check1;
	char *check2;
	check1 = strcpy(dst1, str);
	check2 = ft_strcpy(dst2, str);
	XCTAssert(check1 == dst1, @"strcpy did not return expected address. returned %p, expected %p.", check1, dst1);
	XCTAssert(check2 == dst2, @"ft_strcpy did not return expected address. returned %p, expected %p.", check2, dst2);
	while (i < len)
	{
		XCTAssert(check1[i] == check2[i], @"incorrect value on pos %i, expected %c, returned %c", i, check1[i], check2[i]);
		i++;
	}
}

- (void)testStrCpyWithEmptyString {
	int len = 1;
	int i = 0;
	char *str = "";
	char *dst1 = (char *)malloc(sizeof(char) * len);
	char *dst2 = (char *)malloc(sizeof(char) * len);
	char *check1;
	char *check2;
	check1 = strcpy(dst1, str);
	check2 = ft_strcpy(dst2, str);
	XCTAssert(check1 == dst1, @"strcpy did not return expected address. returned %p, expected %p.", check1, dst1);
	XCTAssert(check2 == dst2, @"ft_strcpy did not return expected address. returned %p, expected %p.", check2, dst2);
	while (i < len)
	{
		XCTAssert(check1[i] == check2[i], @"incorrect value on pos %i, expected %c, returned %c", i, check1[i], check2[i]);
		i++;
	}
}

- (void)testStrCpyWithCompleteWeirdString {
	int len = 10;
	int i = 0;
	char *str = "%$ \t\e\n @#";
	char *dst1 = (char *)malloc(sizeof(char) * len);
	char *dst2 = (char *)malloc(sizeof(char) * len);
	char *check1;
	char *check2;
	check1 = strcpy(dst1, str);
	check2 = ft_strcpy(dst2, str);
	XCTAssert(check1 == dst1, @"strcpy did not return expected address. returned %p, expected %p.", check1, dst1);
	XCTAssert(check2 == dst2, @"ft_strcpy did not return expected address. returned %p, expected %p.", check2, dst2);
	while (i < len)
	{
		XCTAssert(check1[i] == check2[i], @"incorrect value on pos %i, expected %c, returned %c", i, check1[i], check2[i]);
		i++;
	}
}

@end
