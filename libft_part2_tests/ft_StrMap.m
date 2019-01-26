//
//  ft_StrMap.m
//  ft
//
//  Created by Liewe Gutter on 16/01/2019.
//  Copyright © 2019 Liewe Gutter. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "libft.h"

@interface ft_StrMap : XCTestCase

@end

@implementation ft_StrMap

char	test_char_increment_map(char c)
{
	char a = c;
	a++;
	return a;
}

- (void)testIfReturnIsCorrectlyModified {
	char *str;
	char *ret;
	int i = 0;

	str = (char*)malloc(sizeof(char) * 10);
	str = "aaaaaaaaa";
	i = 0;
	ret = ft_strmap(str, &test_char_increment_map);
	while(i < 9)
	{
		XCTAssert(ret[i] == 'b', @"strmap failed on position %i, char is %c", i, ret[i]);
		i++;
	}
}

- (void)testIfSourceIsUnaffected {
	char *str;
	char *ret;
	int i = 0;

	str = (char*)malloc(sizeof(char) * 10);
	str = "aaaaaaaaa";
	i = 0;
	ret = ft_strmap(str, &test_char_increment_map);
	while(i < 9)
	{
		XCTAssert(str[i] == 'a', @"strmap failed on position %i, char is %c", i, str[i]);
		i++;
	}
}

@end
