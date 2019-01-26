//
//  libft_tests.m
//  libft_tests
//
//  Created by Liewe Gutter on 11/01/2019.
//  Copyright © 2019 Liewe Gutter. All rights reserved.


#import <XCTest/XCTest.h>
#import "libft.h"
#import <stdio.h>

@interface ft_StrIterI : XCTestCase

@end

@implementation ft_StrIterI

void	test_char_increment_index(unsigned int i, char *c)
{
	char a = *c;

	a+= i;
	*c = a;
}

- (void)testIfStrIterImodifiesallchars {
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
	ft_striteri(str, &test_char_increment_index);
	while(i < 9)
	{
		XCTAssert(str[i] == ('a' + i), @"striteri failed on position %i, char is %c", i, str[i]);
		i++;
	}
}

@end
