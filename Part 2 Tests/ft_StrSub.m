//
//  ft_StrSub.m
//  ft
//
//  Created by Liewe Gutter on 17/01/2019.
//  Copyright © 2019 Liewe Gutter. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "libft.h"

@interface ft_StrSub : XCTestCase

@end

@implementation ft_StrSub

- (void)testifReturnedStringIsAsExpectedWithMiddleOfNormalString {
	char *str1;
	char *ret;
	unsigned int start = 3;
	size_t len = 5;
	int i = 0;
	str1 = (char *)malloc(sizeof(char) * 10);
	str1 = "Testerder";
	ret = ft_strsub(str1, start, len);
	while (i < len)
	{
		XCTAssert(ret[i] == str1[i + start], @"ft_strsub failed at pos %i, expected %c, returned %c.", i, str1[i + start], ret[i]);
		i++;
	}
	free(ret); //if this gives SIGABORT, you did not allocate your return string properly.
}

- (void)testifReturnedStringIsAsExpectedWithEndOfNormalString {
	char *str1;
	char *ret;
	unsigned int start = 5;
	size_t len = 4;
	int i = 0;
	str1 = (char *)malloc(sizeof(char) * 10);
	str1 = "Testerder";
	ret = ft_strsub(str1, start, len);
	while (i < len)
	{
		XCTAssert(ret[i] == str1[i + start], @"ft_strsub failed at pos %i, expected %c, returned %c.", i, str1[i + start], ret[i]);
		i++;
	}
	free(ret); //if this gives SIGABORT, you did not allocate your return string properly.
}

- (void)testifReturnedStringIsAsExpectedPastEndOfNormalString { //WORKS BUT COULD CAUSE MEM ERRORS
	char *str1;
	char *ret;
	unsigned int start = 8;
	size_t len = 5;
	int i = 0;
	str1 = (char *)malloc(sizeof(char) * 10);
	str1 = "Testerder";
	ret = ft_strsub(str1, start, len);
	while (i < len)
	{
		XCTAssert(ret[i] == str1[i + start], @"ft_strsub failed at pos %i, expected %c, returned %c.", i, str1[i + start], ret[i]);
		i++;
	}
	free(ret); //if this gives SIGABORT, you did not allocate your return string properly.
}

- (void)testifReturnedStringIsAsExpectedWithMiddleOfStringContainingWeirdChars {
	char *str1;
	char *ret;
	unsigned int start = 1;
	size_t len = 8;
	int i = 0;
	str1 = (char *)malloc(sizeof(char) * 10);
	str1 = "  \n	%\e&0@!";
	ret = ft_strsub(str1, start, len);
	while (i < len)
	{
		XCTAssert(ret[i] == str1[i + start], @"ft_strsub failed at pos %i, expected %c, returned %c.", i, str1[i + start], ret[i]);
		i++;
	}
	free(ret); //if this gives SIGABORT, you did not allocate your return string properly.
}

- (void)testifReturnedStringIsAsExpectedWithEndOfStringContainingWeirdChars {
	char *str1;
	char *ret;
	unsigned int start = 1;
	size_t len = 9;
	int i = 0;
	str1 = (char *)malloc(sizeof(char) * 10);
	str1 = "  \n	%&0@!";
	ret = ft_strsub(str1, start, len);
	while (i < len)
	{
		XCTAssert(ret[i] == str1[i + start], @"ft_strsub failed at pos %i, expected %c, returned %c.", i, str1[i + start], ret[i]);
		i++;
	}
	free(ret); //if this gives SIGABORT, you did not allocate your return string properly.
}

@end
