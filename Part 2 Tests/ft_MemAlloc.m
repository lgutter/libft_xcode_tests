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
	while (size > 0)
	{
		size--;
		XCTAssert(a[size] == '\0', @"Memory pos %zu was not initialized to 0, instead to %c", size, a[size]);
	}
	free(a); //if this gives SIGABORT, you did not allocate your return string properly.
}

- (void)testCheckZeroInitialisationMemAllocWithSize0 {
	unsigned char	*a;
	size_t	size = 0;
	a = ft_memalloc(size);
	XCTAssert(a != NULL, @"Memory was not allocated!");
	free(a); //if this gives SIGABORT, you did not allocate your return string properly.
}

@end
