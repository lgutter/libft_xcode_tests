//
//  ft_StrDup.m
//  ft
//
//  Created by Liewe Gutter on 29/01/2019.
//  Copyright © 2019 Liewe Gutter. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "libft.h"

@interface ft_StrDup : XCTestCase

@end

@implementation ft_StrDup

- (void)testWithSimpleString {
	char string[] = "Thisisatest";
	char *ret1;
	char *ret2;
	size_t index = 0;

	ret1 = strdup(string);
	ret2 = ft_strdup(string);
	while (index <= strlen(string))
	{
		XCTAssert(ret1[index] == ret2[index], @"ft_strdup failed on pos %zu, expected %c, returned %c", index, ret1[index], ret2[index]);
		index++;
	}
}

- (void)testWithEmptyString {
	char string[] = "";
	char *ret1;
	char *ret2;
	size_t index = 0;

	ret1 = strdup(string);
	ret2 = ft_strdup(string);
	XCTAssert(ret1[index] == ret2[index], @"ft_strdup failed on pos %zu, expected %c, returned %c", index, ret1[index], ret2[index]);

}

- (void)testWithWeirdCharsInString {
	char string[] = "%$£€\"@#~`¬�¦*\(\n\t\v\e&^\0 test";
	char *ret1;
	char *ret2;
	size_t index = 0;

	ret1 = strdup(string);
	ret2 = ft_strdup(string);
	while (index <= strlen(string))
	{
		XCTAssert(ret1[index] == ret2[index], @"ft_strdup failed on pos %zu, expected %c, returned %c", index, ret1[index], ret2[index]);
		index++;
	}
}

//WILL BREAK REAL STRDUP, AND SO SHOULD FT_STRDUP
- (void)testWithNullString {
	char *ret1;
	char *ret2;

	ret1 = strdup(NULL);
	ret2 = ft_strdup(NULL);
}

@end
