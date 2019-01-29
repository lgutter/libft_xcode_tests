//
//  ft_MemCmp.m
//  ft
//
//  Created by Liewe Gutter on 29/01/2019.
//  Copyright © 2019 Liewe Gutter. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "libft.h"

@interface ft_MemCmp : XCTestCase

@end

@implementation ft_MemCmp

- (void)testMemCmpWithIdenticalSimpleStrings {
	char str1[] = "Thisisatest";
	char str2[] = "Thisisatest";
	int	ret1;
	int ret2;
	size_t len;

	len = 10;
	ret1 = memcmp(str1, str2, len);
	ret2 = ft_memcmp(str1, str2, len);
	XCTAssert(ret1 == ret2, @"ft_memcmp failed with identical strings?! Expected %i, returned %i", ret1, ret2);
}

- (void)testMemCmpWithDifferenceOnPos0OfSimpleStrings {
	char str1[] = "thisisatest";
	char str2[] = "Thisisatest";
	int	ret1;
	int ret2;
	size_t len;

	len = 10;
	ret1 = memcmp(str1, str2, len);
	ret2 = ft_memcmp(str1, str2, len);
	XCTAssert(ret1 == ret2, @"ft_memcmp failed with a difference on pos 0. Expected %i, returned %i", ret1, ret2);
}

- (void)testMemCmpWithDifferenceOnPos5OfSimpleStrings {
	char str1[] = "Thisi*atest";
	char str2[] = "Thisisatest";
	int	ret1;
	int ret2;
	size_t len;

	len = 10;
	ret1 = memcmp(str1, str2, len);
	ret2 = ft_memcmp(str1, str2, len);
	XCTAssert(ret1 == ret2, @"ft_memcmp failed with a difference on pos 5. Expected %i, returned %i", ret1, ret2);
}

- (void)testMemCmpWithDifferenceOnPos9OfSimpleStrings {
	char str1[] = "Thisisate\0t";
	char str2[] = "Thisisatest";
	int	ret1;
	int ret2;
	size_t len;

	len = 10;
	ret1 = memcmp(str1, str2, len);
	ret2 = ft_memcmp(str1, str2, len);
	XCTAssert(ret1 == ret2, @"ft_memcmp failed with a difference on pos 9 with len 10. Expected %i, returned %i", ret1, ret2);
}

- (void)testMemCmpWithDifferenceOnPos10OfSimpleStrings {
	char str1[] = "Thisisatesu";
	char str2[] = "Thisisatest";
	int	ret1;
	int ret2;
	size_t len;

	len = 10;
	ret1 = memcmp(str1, str2, len);
	ret2 = ft_memcmp(str1, str2, len);
	XCTAssert(ret1 == ret2, @"ft_memcmp failed with a difference on pos 10 with len 10. Expected %i, returned %i", ret1, ret2);
}

- (void)testMemCmpWithDifferenceOnPos9OfSimpleStringsWithLen5 {
	char str1[] = "Thisisate\0t";
	char str2[] = "Thisisatest";
	int	ret1;
	int ret2;
	size_t len;

	len = 5;
	ret1 = memcmp(str1, str2, len);
	ret2 = ft_memcmp(str1, str2, len);
	XCTAssert(ret1 == ret2, @"ft_memcmp failed with a difference on pos 9 with len 5. Expected %i, returned %i", ret1, ret2);
}

//COULD CAUSE ERRORS SINCE IT GOES BEYOND THE STRING!
- (void)testMemCmpWithIdenticalSimpleStringsWithLenBeyondStrings {
	char str1[] = "Thisisatest";
	char str2[] = "Thisisatest";
	int	ret1;
	int ret2;
	size_t len;

	len = 15;
	ret1 = memcmp(str1, str2, len);
	ret2 = ft_memcmp(str1, str2, len);
	XCTAssert(ret1 == ret2, @"ft_memcmp failed with identical strings with len beyond stringds. Expected %i, returned %i", ret1, ret2);
}

- (void)testMemCmpWithDifferenceOnPos0OfSimpleStringsWithLen0 {
	char str1[] = "thisisatest";
	char str2[] = "Thisisatest";
	int	ret1;
	int ret2;
	size_t len;

	len = 0;
	ret1 = memcmp(str1, str2, len);
	ret2 = ft_memcmp(str1, str2, len);
	XCTAssert(ret1 == ret2, @"ft_memcmp failed with a difference on pos 0 with len 0. Expected %i, returned %i", ret1, ret2);
}

- (void)testMemCmpWithExtendedAsciiOnPos0OfSimpleStrings {
	unsigned char str1[] = "�hisisatest";
	unsigned char str2[] = "Thisisatest";
	int	ret1;
	int ret2;
	size_t len;

	len = 5;
	ret1 = memcmp(str1, str2, len);
	ret2 = ft_memcmp(str1, str2, len);
	XCTAssert(ret1 == ret2, @"ft_memcmp failed with a difference on pos 0 with len 0. Expected %i, returned %i", ret1, ret2);
}
@end
