//
//  ft_ToLower.m
//  ft
//
//  Created by Liewe Gutter on 31/01/2019.
//  Copyright © 2019 Liewe Gutter. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "libft.h"

@interface ft_ToLower : XCTestCase

@end

@implementation ft_ToLower

- (void)testAllUnsignedCharValues {
	int input = 0;
	int out1;
	int out2;
	while (input < 256)
	{
		out1 = tolower(input);
		out2 = ft_tolower(input);
		XCTAssert(out1 == out2, @"Character %i did not match, tolower returned %i, ft_tolower %i.", input, out1, out2);
		input++;
	}
}

- (void)testAllSignedCharValues {
	int input = -127;
	int out1;
	int out2;
	while (input < 128)
	{
		out1 = tolower(input);
		out2 = ft_tolower(input);
		XCTAssert(out1 == out2, @"Character %i did not match, tolower returned %i, ft_tolower %i.", input, out1, out2);
		input++;
	}
}

@end
