//
//  ft_StrDel.m
//  ft
//
//  Created by Liewe Gutter on 16/01/2019.
//  Copyright © 2019 Liewe Gutter. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "libft.h"

@interface ft_StrDel : XCTestCase

@end

@implementation ft_StrDel

- (void)testIfFt_StrDelFreedMem {
	char *str;
	char src[10] = "testerder";
	char **pnt;
	int i;

	str = (char*)malloc(sizeof(char) * 10);
	while (src[i])
	{
		str[i] = src[i];
		i++;
	}
	i = 0;
	pnt = &str;
	XCTAssert(str != NULL, @"String was not correctly created");
	ft_strdel(pnt);
	XCTAssert(str == NULL, @"Memory location was not correctly set to NULL");
}

@end
