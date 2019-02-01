//
//  ft_StrLen.m
//  ft
//
//  Created by Liewe Gutter on 16/01/2019.
//  Copyright © 2019 Liewe Gutter. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "libft.h"

@interface ft_StrLen : XCTestCase

@end

@implementation ft_StrLen

- (void)testIfLenIsCorrectForNormalString {
	char *str;
	int i = 0;
	size_t len;
	size_t rlen;
	str = (char *)malloc(sizeof(char) * 10);
	while (i < 9)
		str[i++] = 'a';
	str[i] = '\0';
	len = ft_strlen(str);
	rlen = strlen(str);
	XCTAssert(len == rlen, @"String length incorrect, len is %zu, should be %zu", len, rlen);
}

- (void)testIfLenIsCorrectWithEmptyString {
	char *str;
	size_t len;
	size_t rlen;
	str = (char *)malloc(sizeof(char) * 1);
	str[0] = '\0';
	len = ft_strlen(str);
	rlen = strlen(str);
	XCTAssert(len == rlen, @"String length incorrect, len is %zu, should be %zu", len, rlen);
}

- (void)testIfLenIsCorrectForStringWithWeirdChars {
	char *str;
	size_t len;
	size_t rlen;
	str = (char *)malloc(sizeof(char) * 10);
	str = "  \n	%\e&0@!";
	len = ft_strlen(str);
	rlen = strlen(str);
	XCTAssert(len == rlen, @"String length incorrect, len is %zu, should be %zu", len, rlen);
}

@end
