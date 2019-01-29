//
//  ft_StrNEqu.m
//  ft
//
//  Created by Liewe Gutter on 17/01/2019.
//  Copyright © 2019 Liewe Gutter. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "libft.h"

@interface ft_StrNEqu : XCTestCase

@end

@implementation ft_StrNEqu

- (void)testIfMatchingStringsReturn1WithDifferentMaxLengths {
		char *str1;
		char *str2;
		int i = 0;
		int ret;

		str1 = (char *)malloc(sizeof(char) * 10);
		str2 = (char *)malloc(sizeof(char) * 10);
		str1 = "Testerder";
		str2 = "Testerder";
		while (i < 15) //shouldn't go past 10
		{
			ret = ft_strnequ(str1, str2, i);
			XCTAssert(1 == ret, @"ft_strnequ returns %i instead of 1 on matching strings with max length of %i.", ret, i);
			i++;
		}
}

- (void)testIfStringsWithDifferentCharReturn0WithMaxLengthsLessThanDifferingChar {
	char *str1;
	char *str2;
	int i = 0;
	int ret;

	str1 = (char *)malloc(sizeof(char) * 10);
	str2 = (char *)malloc(sizeof(char) * 10);
	str1 = "Testerder";
	str2 = "Testefder";
	while (i < 15) // shouldn't go past 10
	{
		ret = ft_strnequ(str1, str2, i);
		if (i < 6) //should return 1 if max length is less than the position of the differing character, since it matches up to there.
			XCTAssert(1 == ret, @"ft_strnequ returns %i instead of 1 when max len(%i) is less than differing char.", ret, i);
		if (i >= 6) //should return 1 if max length is more than or equal to the position of the differing character, since the characters differ.
			XCTAssert(0 == ret, @"ft_strnequ returns %i instead of 0 when max len(%i) is more than differing char.", ret, i);
		i++;
	}
}

- (void)testIfWhenFirstStringIsShorterReturnIsCorrectWithDifferentMaxlength {
	char *str1;
	char *str2;
	int i = 0;
	int ret;

	str1 = (char *)malloc(sizeof(char) * 8);
	str2 = (char *)malloc(sizeof(char) * 10);
	str1 = "Testerd";
	str2 = "Testerder";
	while (i < 15) // shouldn't go past 8
	{
		ret = ft_strnequ(str1, str2, i);
		if (i < 8) //should return 1 if max length is less than string 1, since it matches up to there.
			XCTAssert(1 == ret, @"ft_strnequ returns %i instead of 1 when max len(%i) is less than length of first string.", ret, i);
		if (i >= 8) //should return 0 if max length is more than string 1, since it will not match at the \0.
			XCTAssert(0 == ret, @"ft_strnequ returns %i instead of 0 when max len(%i) is more than length of first string.", ret, i);
		i++;
	}
}

- (void)testIfWhenSecondStringIsShorterReturnIsCorrectWithDifferentMaxLength {
	char *str1;
	char *str2;
	int i = 0;
	int ret;

	str1 = (char *)malloc(sizeof(char) * 10);
	str2 = (char *)malloc(sizeof(char) * 8);
	str1 = "Testerd";
	str2 = "Testerder";
	while (i < 15) // shouldn't go past 8
	{
		ret = ft_strnequ(str1, str2, i);
		if (i < 8) //should return 1 if max length is less than string 2, since it matches up to there.
			XCTAssert(1 == ret, @"ft_strnequ returns %i instead of 1 when max len(%i) is less than length of first string.", ret, i);
		if (i >= 8) //should return 0 if max length is more than string 2, since it will not match at the \0.
			XCTAssert(0 == ret, @"ft_strnequ returns %i instead of 0 when max len(%i) is more than length of first string.", ret, i);
		i++;
	}
}

-(void)testIfTwoStringsOfSize1Return1WithDifferentMaxLengths {
	char *str1;
	char *str2;
	int i = 0;
	int ret;

	str1 = (char *)malloc(sizeof(char) * 1);
	str2 = (char *)malloc(sizeof(char) * 1);
	str1 = "";
	str2 = "";
	while (i < 3) //shouldn't go past 0
	{
		ret = ft_strnequ(str1, str2, i);
		XCTAssert(1 == ret, @"ft_strnequ returns %i instead of 1 on two strings of length 1.", ret);
		i++;
	}
}

//TESTS WITH NULL STRINGER, ONLY FOR PROTECTED FUNCTIONS
- (void)testIfOneNULLStringReturns0WithDifferentMaxLengths {
	char *str1;
	char *str2;
	int i = 0;
	int ret;

	str1 = (char *)malloc(sizeof(char) * 10);
	str1 = "Testerder";
	while (i < 3) //shouldn't go past 0
	{
		ret = ft_strnequ(str1, str2, i);
		XCTAssert(0 == ret, @"ft_strnequ returns %i instead of 0 on one empty string.", ret);
		i++;
	}
}

- (void)testIfTwoNULLStringsReturn1WithDifferentMaxLengths {
	char *str1;
	char *str2;
	int i = 0;
	int ret;

	while (i < 3) //shouldn't go past 0
	{
		ret = ft_strnequ(str1, str2, i);
		XCTAssert(1 != ret, @"ft_strnequ returns %i instead of 1 on two empty strings.", ret);
		i++;
	}
}

@end
