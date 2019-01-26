//
//  ft_StrMapI.m
//  ft
//
//  Created by Liewe Gutter on 16/01/2019.
//  Copyright © 2019 Liewe Gutter. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "libft.h"

@interface ft_StrMapI : XCTestCase

@end

@implementation ft_StrMapI

char	test_char_increment_map_index(unsigned int i, char c)
{
	char a = c;
	if (i % 2 == 0)
		a++;
	else
		a += 2;
	return a;
}

- (void)testIfStrMapIProperlyRanFunction {
	char	*str;
	char	*ret;
	int 	i = 0;

	str = (char *)malloc(sizeof(char) * 10);
	str = "aaaaaaaaa";
	i = 0;
	ret = ft_strmapi(str, &test_char_increment_map_index);
	while (ret[i] != '\0')
	{
		if (i % 2 == 0)
			XCTAssert(ret[i] == 'b', @"ft_strmapi did not run function properly, char is %c", ret[i]);
		else
			XCTAssert(ret[i] == 'c', @"ft_strmapi did not run function properly, char is %c", ret[i]);
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
	ret = ft_strmapi(str, &test_char_increment_map_index);
	while(i < 9)
	{
		XCTAssert(str[i] == 'a', @"strmap failed on position %i, char is %c", i, str[i]);
		i++;
	}
}

@end
