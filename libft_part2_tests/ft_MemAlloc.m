//
//  ft_MemAlloc.m
//  ft
//
//  Created by Liewe Gutter on 16/01/2019.
//  Copyright © 2019 Liewe Gutter. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "libft.h"

@interface ft_MemAlloc : XCTestCase

@end

@implementation ft_MemAlloc

- (void)testCheckZeroInitialisationMemAlloc {
	unsigned char	*a;
	size_t	size = 10;
	a = ft_memalloc(size);
	size++;
	while (size > 0)
	{
		size--;
		XCTAssert(a[size] == '\0', @"Memory was not initialized to 0, instead to %c", a[size]);
	}
}

- (void)testCheckZeroInitialisationMemAllocWithSize0 {
	unsigned char	*a;
	size_t	size = 0;
	a = ft_memalloc(size);
	XCTAssert(a != NULL, @"Memory was not allocated!");
}

@end
