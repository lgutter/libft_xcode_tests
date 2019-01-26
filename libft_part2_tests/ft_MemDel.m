//
//  ft_MemDel.m
//  ft
//
//  Created by Liewe Gutter on 16/01/2019.
//  Copyright © 2019 Liewe Gutter. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "libft.h"

@interface ft_MemDel : XCTestCase

@end

@implementation ft_MemDel

- (void)testIfMemDelFreedMem {
	[self measureBlock:^{
		char *str;
		char src[10] = "testerder";
		void **pnt;
		int i = 0;
		str = (char*)malloc(sizeof(char) * 10);
		while (src[i])
		{
			str[i] = src[i];
			i++;
		}
		str[i] = '\0';
		pnt = (void *)&str;
		ft_memdel((void *)&str);
		XCTAssert(str == NULL, @"Memory location was not correctly set to NULL");
	}];
}

@end
