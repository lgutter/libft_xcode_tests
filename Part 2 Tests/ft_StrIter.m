//
//  ft_StrIter.m
//  ft
//
//  Created by Liewe Gutter on 16/01/2019.
//  Copyright © 2019 Liewe Gutter. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "libft.h"

@interface ft_StrIter : XCTestCase

@end

@implementation ft_StrIter

void	test_char_increment(char *c)
{
	char a = *c;
	a++;
	*c = a;
}

- (void)testIfStrIterExecutedFunctionOnStr {
	char *str;
	int i = 0;

	str = (char*)malloc(sizeof(char) * 10);
	while (i < 9)
	{
		str[i] = 'a';
		i++;
	}
	str[i] = '\0';
	i = 0;
	ft_striter(str, &test_char_increment);
	while(str[i])
	{
		XCTAssert(str[i] == 'b', @"striter failed on position %i, char is %c", i, str[i]);
		i++;
	}
}

@end
