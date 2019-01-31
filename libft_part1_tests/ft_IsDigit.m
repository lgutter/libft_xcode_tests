//
//  ft_IsDigit.m
//  ft
//
//  Created by Liewe Gutter on 31/01/2019.
//  Copyright © 2019 Liewe Gutter. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface ft_IsDigit : XCTestCase

@end

@implementation ft_IsDigit

- (void)testAllUnsignedCharValues {
	int input = 0;
	int out1;
	int out2;
	while (input < 256)
	{
		out1 = isdigit(input);
		out2 = ft_isdigit(input);
		XCTAssert(out1 == out2, @"Character %i did not match, isdigit returned %i, ft_isdigit %i.", input, out1, out2);
	}
}

- (void)testAllSignedCharValues {
	int input = -127;
	int out1;
	int out2;
	while (input < 128)
	{
		out1 = isdigit(input);
		out2 = ft_isdigit(input);
		XCTAssert(out1 == out2, @"Character %i did not match, isdigit returned %i, ft_isdigit %i.", input, out1, out2);
	}
}

@end
