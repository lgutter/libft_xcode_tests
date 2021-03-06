//
//  ft_StrCmp.m
//  ft
//
//  Created by Liewe Gutter on 31/01/2019.
//  Copyright © 2019 Liewe Gutter. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "libft.h"

@interface ft_StrCmp : XCTestCase

@end

@implementation ft_StrCmp

- (void)testWithIdenticalSimpleStrings {
	char str1[] = "Thisisatest";
	char str2[] = "Thisisatest";
	int	ret1;
	int ret2;

	ret1 = strcmp(str1, str2);
	ret2 = ft_strcmp(str1, str2);
	XCTAssert(ret1 == ret2, @"ft_strcmp failed with identical strings?! Expected %i, returned %i", ret1, ret2);
}

- (void)testWithDifferenceOnPos0OfSimpleStrings {
	char str1[] = "thisisatest";
	char str2[] = "Thisisatest";
	int	ret1;
	int ret2;

	ret1 = strcmp(str1, str2);
	ret2 = ft_strcmp(str1, str2);
	XCTAssert(ret1 == ret2, @"ft_strcmp failed with a difference on pos 0. Expected %i, returned %i", ret1, ret2);
}

- (void)testWithDifferenceOnPos5OfSimpleStrings {
	char str1[] = "Thisi*atest";
	char str2[] = "Thisisatest";
	int	ret1;
	int ret2;

	ret1 = strcmp(str1, str2);
	ret2 = ft_strcmp(str1, str2);
	XCTAssert(ret1 == ret2, @"ft_strcmp failed with a difference on pos 5. Expected %i, returned %i", ret1, ret2);
}

- (void)testWithDifferenceOnPos9OfSimpleStrings {
	char str1[] = "Thisisate\0t";
	char str2[] = "Thisisatest";
	int	ret1;
	int ret2;

	ret1 = strcmp(str1, str2);
	ret2 = ft_strcmp(str1, str2);
	XCTAssert(ret1 == ret2, @"ft_strcmp failed with a difference on pos 9 with len 10. Expected %i, returned %i", ret1, ret2);
}

- (void)testWithDifferenceOnPos10OfSimpleStrings {
	char str1[] = "Thisisatesu";
	char str2[] = "Thisisatest";
	int	ret1;
	int ret2;

	ret1 = strcmp(str1, str2);
	ret2 = ft_strcmp(str1, str2);
	XCTAssert(ret1 == ret2, @"ft_strcmp failed with a difference on pos 10 with len 10. Expected %i, returned %i", ret1, ret2);
}

- (void)testWithExtendedAsciiOnPos0OfSimpleStrings {
	char *str1 = "\xe3hisisatest";
	char *str2 = "Thisisatest";
	int	ret1;
	int ret2;

	ret1 = strcmp(str1, str2);
	ret2 = ft_strcmp(str1, str2);
	XCTAssert(ret1 == ret2, @"ft_strcmp failed with a difference on pos 0 with len 0. Expected %i, returned %i", ret1, ret2);
}

@end
