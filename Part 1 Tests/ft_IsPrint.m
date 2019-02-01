//
//  ft_IsPrint.m
//  ft
//
//  Created by Liewe Gutter on 31/01/2019.
//  Copyright © 2019 Liewe Gutter. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "libft.h"

@interface ft_IsPrint : XCTestCase

@end

@implementation ft_IsPrint

- (void)testAllUnsignedCharValues {
	int input = 0;
	int out1;
	int out2;
	while (input < 256)
	{
		out1 = isprint(input);
		out2 = ft_isprint(input);
		XCTAssert(out1 == out2, @"Character %i did not match, isprint returned %i, ft_isprint %i.", input, out1, out2);
		input++;
	}
}

- (void)testAllSignedCharValues {
	int input = -127;
	int out1;
	int out2;
	while (input < 128)
	{
		out1 = isprint(input);
		out2 = ft_isprint(input);
		XCTAssert(out1 == out2, @"Character %i did not match, isprint returned %i, ft_isprint %i.", input, out1, out2);
		input++;
	}
}

@end
