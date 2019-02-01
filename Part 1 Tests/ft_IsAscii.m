//
//  ft_IsAscii.m
//  ft
//
//  Created by Liewe Gutter on 31/01/2019.
//  Copyright © 2019 Liewe Gutter. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "libft.h"

@interface ft_IsAscii : XCTestCase

@end

@implementation ft_IsAscii

- (void)testAllUnsignedCharValues {
	int input = 0;
	int out1;
	int out2;
	while (input < 256)
	{
		out1 = isascii(input);
		out2 = ft_isascii(input);
		XCTAssert(out1 == out2, @"Character %i did not match, isascii returned %i, ft_isascii %i.", input, out1, out2);
		input++;
	}
}

- (void)testAllSignedCharValues {
	int input = -127;
	int out1;
	int out2;
	while (input < 128)
	{
		out1 = isascii(input);
		out2 = ft_isascii(input);
		XCTAssert(out1 == out2, @"Character %i did not match, isascii returned %i, ft_isascii %i.", input, out1, out2);
		input++;
	}
}

@end
