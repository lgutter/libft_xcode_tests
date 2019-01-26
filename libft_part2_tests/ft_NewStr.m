//
//  ft_NewStr.m
//  ft
//
//  Created by Liewe Gutter on 16/01/2019.
//  Copyright © 2019 Liewe Gutter. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "libft.h"

@interface ft_NewStr : XCTestCase

@end

@implementation ft_NewStr

- (void)testZeroAllocation {
	char *str;
	int i = 0;

	str = ft_strnew(5);
	if (str == NULL)
		XCTFail(@"String was not allocated");
	while (i <= 5)
	{
		XCTAssert(str[i] == '\0', @"String pos %i not initialized to '\\0', instead is %c", i, str[i]);
		i++;
	}
}

- (void)testSizeZero {
	char *str;

	str = ft_strnew(0);
	if (str == NULL)
		XCTFail(@"String was not allocated");
}
@end
