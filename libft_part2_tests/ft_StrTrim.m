//
//  ft_StrTrim.m
//  ft
//
//  Created by Liewe Gutter on 18/01/2019.
//  Copyright © 2019 Liewe Gutter. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "libft.h"

@interface ft_StrTrim : XCTestCase

@end

@implementation ft_StrTrim

- (void)testSimpleStringWithoutWhitespaces {
	char *str = (char *)malloc(5);
	char *check = (char *)malloc(5);
	char *ret;
	int i = 0;
	check = "test";
	str = "test";
	ret = ft_strtrim(str);
	while (i <= 4)
	{
		XCTAssert(ret[i] == check[i], @"ft_strtrim failed at pos %i. returned %s instead of %s", i, ret, check);
		i++;
	}
	free(ret); //if this gives SIGABORT, you did not allocate your return string properly.
}

- (void)testSimpleStringWithWhitespaceAtBothEnds {
	char *str = (char *)malloc(11);
	char *check = (char *)malloc(5);
	char *ret;
	int i = 0;
	check = "test";
	str = " \n\ttest \t\n";
	ret = ft_strtrim(str);
	while (i <= 4)
	{
		XCTAssert(ret[i] == check[i], @"ft_strtrim failed at pos %i. returned %s instead of %s", i, ret, check);
		i++;
	}
	free(ret); //if this gives SIGABORT, you did not allocate your return string properly.
}


- (void)testSimpleStringWithWhitespaceAtBothEndsAndMiddle {
	char *str = (char *)malloc(11);
	char *check = (char *)malloc(5);
	char *ret;
	int i = 0;
	check = "t\t\nt";
	str = " \n\tt\t\nt \t\n";
	ret = ft_strtrim(str);
	while (i <= 4)
	{
		XCTAssert(ret[i] == check[i], @"ft_strtrim failed at pos %i. returned %s instead of %s", i, ret, check);
		i++;
	}
	free(ret); //if this gives SIGABORT, you did not allocate your return string properly.
}

- (void)testSimpleStringWithOnlyWhitespaces {
	char *str = (char *)malloc(9);
	char *check = (char *)malloc(1);
	char *ret;
	int i = 0;
	check = "";
	str = " \n\t\t\n \t\n";
	ret = ft_strtrim(str);
		XCTAssert(ret[i] == check[i], @"ft_strtrim failed at pos %i. returned %s instead of %s", i, ret, check);
	free(ret); //if this gives SIGABORT, you did not allocate your return string properly.
}

- (void)testSimpleStringWithWhitespaceAtBothEndsAndMiddlePlusWeirdChars {
	char *str = (char *)malloc(13);
	char *check = (char *)malloc(10);
	char *ret;
	int i = 0;
	check = "#\tt\t\nt \t!";
	str = " \n#\tt\t\nt \t!\n";
	ret = ft_strtrim(str);
	while (i <= 9)
	{
		XCTAssert(ret[i] == check[i], @"ft_strtrim failed at pos %i. returned %s instead of %s", i, ret, check);
		i++;
	}
	free(ret); //if this gives SIGABORT, you did not allocate your return string properly.
}

- (void)testSizeOf1 {
	char *str = (char *)malloc(1);
	char *check = (char *)malloc(1);
	char *ret;
	check = "";
	str = "";
	ret = ft_strtrim(str);
	XCTAssert(ret[0] == check[0], @"ft_strtrim failed at pos 0. returned %s instead of %s", ret, check);
	free(ret); //if this gives SIGABORT, you did not allocate your return string properly.
}

//CREATES BAD EXCESS ERROR SINCE NO MEMORY SPACE WAS ALLOCATED
- (void)testSizeOf0 {
	char *str = (char *)malloc(0);
	char *ret;
	ret = ft_strtrim(str);
	XCTAssert(ret, @"ft_strtrim didn't allocate new string. Address is %p", ret);
}

@end
