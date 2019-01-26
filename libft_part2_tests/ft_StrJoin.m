//
//  ft_StrJoin.m
//  ft
//
//  Created by Liewe Gutter on 18/01/2019.
//  Copyright © 2019 Liewe Gutter. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "libft.h"

@interface ft_StrJoin : XCTestCase

@end

@implementation ft_StrJoin

- (void)testIfSimpleStringsCombineProperly {
	int s1 = 6;
	int s2 = 5;
	int i = 0;
	char *ret;
	char *str1 = (char *)malloc(sizeof(char) * (s1 + 1));
	char *str2 = (char *)malloc(sizeof(char) * (s2 + 1));
	str1 = "Thisis";
	str2 = "Atest";
	ret = ft_strjoin(str1, str2);
	while (i < s1)
	{
		XCTAssert(ret[i] == str1[i], @"Incorrect char on pos %i, expected %c, returned %c.", i, str1[i], ret[i]);
		i++;
	}
	while (i <= (s1 + s2))
	{
		XCTAssert(ret[i] == str2[i - (s2 + 1)], @"Incorrect char on pos %i, expected %c, returned %c.", i, str2[i - (s2 + 1)], ret[i]);
		i++;
	}
}

- (void)testIfFirstEmptyStringCombinesProperly {
	int s1 = 0;
	int s2 = 5;
	int i = 0;
	char *ret;
	char *str1 = (char *)malloc(sizeof(char) * (s1 + 1));
	char *str2 = (char *)malloc(sizeof(char) * (s2 + 1));
	str1 = "";
	str2 = "Atest";
	ret = ft_strjoin(str1, str2);

	while (i <= s2)
	{
		XCTAssert(ret[i] == str2[i], @"Incorrect char on pos %i, expected %c, returned %c.", i, str2[i], ret[i]);
		i++;
	}
}

- (void)testIfSecondEmptyStringCombinesProperly {
	int s1 = 6;
	int s2 = 0;
	int i = 0;
	char *ret;
	char *str1 = (char *)malloc(sizeof(char) * (s1 + 1));
	char *str2 = (char *)malloc(sizeof(char) * (s2 + 1));
	str1 = "Thisis";
	str2 = "";
	ret = ft_strjoin(str1, str2);
	while (i <= s1)
	{
		XCTAssert(ret[i] == str1[i], @"Incorrect char on pos %i, expected %c, returned %c.", i, str1[i], ret[i]);
		i++;
	}
	while (i <= (s1 + s2))
	{
		XCTAssert(ret[i] == str2[s2 - i], @"Incorrect char on pos %i, expected %c, returned %c.", i, str2[s2 - i], ret[i]);
		i++;
	}
}

- (void)testIfBothEmptyStringsCombineProperly {
	int s1 = 0;
	int s2 = 0;
	int i = 0;
	char *ret;
	char *str1 = (char *)malloc(sizeof(char) * (s1 + 1));
	char *str2 = (char *)malloc(sizeof(char) * (s2 + 1));
	str1 = "";
	str2 = "";
	ret = ft_strjoin(str1, str2);
	while (i <= s1)
	{
		XCTAssert(ret[i] == str1[i], @"Incorrect char on pos %i, expected %c, returned %c.", i, str1[i], ret[i]);
		i++;
	}
	while (i <= (s1 + s2))
	{
		XCTAssert(ret[i] == str2[s2 - i], @"Incorrect char on pos %i, expected %c, returned %c.", i, str2[s2 - i], ret[i]);
		i++;
	}
}

- (void)testIfSingleCharStringsCombineProperly {
	int s1 = 1;
	int s2 = 1;
	int i = 0;
	char *ret;
	char *str1 = (char *)malloc(sizeof(char) * (s1 + 1));
	char *str2 = (char *)malloc(sizeof(char) * (s2 + 1));
	str1 = "T";
	str2 = "A";
	ret = ft_strjoin(str1, str2);
	while (i < s1)
	{
		XCTAssert(ret[i] == str1[i], @"Incorrect char on pos %i, expected %c, returned %c.", i, str1[i], ret[i]);
		i++;
	}
	while (i <= (s1 + s2))
	{
		XCTAssert(ret[i] == str2[s2 - i], @"Incorrect char on pos %i, expected %c, returned %c.", i, str2[s2 - i], ret[i]);
		i++;
	}
}

- (void)testIfWeirdStringsCombineProperly {
	int s1 = 5;
	int s2 = 5;
	int i = 0;
	char *ret;
	char *str1 = (char *)malloc(sizeof(char) * (s1 + 1));
	char *str2 = (char *)malloc(sizeof(char) * (s2 + 1));
	str1 = "£$%&*";
	str2 = "\'@\n!";
	ret = ft_strjoin(str1, str2);
	while (i <= s1)
	{
		XCTAssert(ret[i] == str1[i], @"Incorrect char on pos %i, expected %c, returned %c.", i, str1[i], ret[i]);
		i++;
	}
	while (i <= (s1 + s2))
	{
		XCTAssert(ret[i] == str2[i - (s2 + 1)], @"Incorrect char on pos %i, expected %c, returned %c.", i, str2[i - (s2 + 1)], ret[i]);
		i++;
	}
}

- (void)testIfSecondVoidStringCombinesProperly {
	int s1 = 6;
	int i = 0;
	char *ret;
	char *str1 = (char *)malloc(sizeof(char) * (s1 + 1));
	str1 = "Thisis";
	ret = ft_strjoin(str1, NULL);
	while (i < s1)
	{
		XCTAssert(ret[i] == str1[i], @"Incorrect return, expected %s, returned %s.", str1, ret);
		i++;
	}
}
- (void)testIfFirstVoidStringCombinesProperly {
	int s2 = 5;
	int i = 0;
	char *ret;
	char *str2 = (char *)malloc(sizeof(char) * (s2 + 1));
	str2 = "Atest";
	ret = ft_strjoin(NULL, str2);
	while (i < s2)
	{
		XCTAssert(ret[i] == str2[i], @"Incorrect return, expected %s, returned %s.", str2, ret);
		i++;
	}
}

- (void)testIfBothVoidStringsCombineProperly {
	char *ret;
	ret = ft_strjoin(NULL, NULL);
	XCTAssert(!ret, @"should have returned NULL");
}
@end
