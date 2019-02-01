//
//  ft_ToUpper.m
//  ft
//
//  Created by Liewe Gutter on 31/01/2019.
//  Copyright © 2019 Liewe Gutter. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "libft.h"

@interface ft_ToUpper : XCTestCase

@end

@implementation ft_ToUpper

- (void)testAllUnsignedCharValues {
	int input = 0;
	int out1;
	int out2;
	while (input < 256)
	{
		out1 = toupper(input);
		out2 = ft_toupper(input);
		XCTAssert(out1 == out2, @"Character %i did not match, toupper returned %i, ft_toupper %i.", input, out1, out2);
		input++;
	}
}

- (void)testAllSignedCharValues {
	int input = -127;
	int out1;
	int out2;
	while (input < 128)
	{
		out1 = toupper(input);
		out2 = ft_toupper(input);
		XCTAssert(out1 == out2, @"Character %i did not match, toupper returned %i, ft_toupper %i.", input, out1, out2);
		input++;
	}
}

@end
