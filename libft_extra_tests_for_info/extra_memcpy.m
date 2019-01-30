//
//  extra_memcpy.m
//  ft
//
//  Created by Liewe Gutter on 30/01/2019.
//  Copyright © 2019 Liewe Gutter. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface extra_memcpy : XCTestCase

@end

@implementation extra_memcpy

//TESTS BELOW TEST OVERLAP, WHICH IS UNDEFINED BEHAVIOUR.
//JUST USE THIS AS INFORMATION ON HOW YOUR FUNCTION PERFORMS COMPARED TO THE REAL MEMCPY.
- (void)testMemCpyOverlappingAfterStartOfSimpleString {
	char str2[11] = "1234567890";
	char buffer[20] = "                    ";
	char str1[11] = "1234567890";
	char *dst1;
	char *dst2;
	dst1 = (str1 + 3);
	dst2 = (str2 + 3);
	char *check1;
	char *check2;
	size_t len = 5;
	int i = 0;
	check1 = memcpy(dst1, str1, len);
	check2 = ft_memcpy(dst2, str2, len);
	XCTAssert(check1 == dst1, @"memcpy did not return expected address. returned %p, expected %p.", check1, dst1);
	XCTAssert(check2 == dst2, @"ft_memcpy did not return expected address. returned %p, expected %p.", check2, dst2);
	while (i < len)
	{
		XCTAssert(check1[i] == check2[i], @"incorrect value on pos %i in dst, expected %c, returned %c", i, check1[i], check2[i]);
		XCTAssert(str1[i] == str2[i], @"incorrect value on pos %i in src, expected %c, returned %c", i, str1[i], str2[i]);
		i++;
	}
}


- (void)testMemCpyOverlappingBeforeStartOfSimpleString {
	char str1[11] = "1234567890";
	char str2[11] = "1234567890";
	char *dst1;
	char *dst2;
	dst1 = (str1 - 3);
	dst2 = (str2 - 3);
	char *check1;
	char *check2;
	size_t len = 5;
	int i = 0;
	check1 = memcpy(dst1, str1, len);
	check2 = ft_memcpy(dst2, str2, len);
	XCTAssert(check1 == dst1, @"memcpy did not return expected address. returned %p, expected %p.", check1, dst1);
	XCTAssert(check2 == dst2, @"ft_memcpy did not return expected address. returned %p, expected %p.", check2, dst2);
	while (i < len)
	{
		XCTAssert(check1[i] == check2[i], @"incorrect value on pos %i in dst, expected %c, returned %c", i, check1[i], check2[i]);
		XCTAssert(str1[i] == str2[i], @"incorrect value on pos %i in src, expected %c, returned %c", i, str1[i], str2[i]);
		i++;
	}
}

- (void)testMemCpyOverlappingBeforeStartOfSimpleStringTwice {
	char str1[11] = "1234567890";
	char str2[11] = "1234567890";
	char *dst1;
	char *dst2;
	dst1 = (str1 - 3);
	dst2 = (str2 - 3);
	char *check1;
	char *check2;
	size_t len = 5;
	int i = 0;
	check1 = memcpy(dst1, str1, len);
	check2 = ft_memcpy(dst2, str2, len);
	dst1 += 2;
	dst2 += 2;
	check1 = memcpy(dst1, str1, len);
	check2 = ft_memcpy(dst2, str2, len);
	XCTAssert(check1 == dst1, @"memcpy did not return expected address. returned %p, expected %p.", check1, dst1);
	XCTAssert(check2 == dst2, @"ft_memcpy did not return expected address. returned %p, expected %p.", check2, dst2);
	while (i < len)
	{
		XCTAssert(check1[i] == check2[i], @"incorrect value on pos %i in dst, expected %c, returned %c", i, check1[i], check2[i]);
		XCTAssert(str1[i] == str2[i], @"incorrect value on pos %i in src, expected %c, returned %c", i, str1[i], str2[i]);
		i++;
	}
}

- (void)testMemCpyOverlappingAfterStartOfWeirdString {
	char str1[11] = "%$ \t\e\n @#\v";
	char str2[11] = "%$ \t\e\n @#\v";
	char *dst1;
	char *dst2;
	dst1 = (str1 + 3);
	dst2 = (str2 + 3);
	char *check1;
	char *check2;
	size_t len = 5;
	int i = 0;
	check1 = memcpy(dst1, str1, len);
	check2 = ft_memcpy(dst2, str2, len);
	XCTAssert(check1 == dst1, @"memcpy did not return expected address. returned %p, expected %p.", check1, dst1);
	XCTAssert(check2 == dst2, @"ft_memcpy did not return expected address. returned %p, expected %p.", check2, dst2);
	while (i < len)
	{
		XCTAssert(check1[i] == check2[i], @"incorrect value on pos %i in dst, expected %c, returned %c", i, check1[i], check2[i]);
		XCTAssert(str1[i] == str2[i], @"incorrect value on pos %i in src, expected %c, returned %c", i, str1[i], str2[i]);
		i++;
	}
}


- (void)testMemCpyOverlappingBeforeStartOfWeirdString {
	char str1[11] = "%$ \t\e\n @#\v";
	char str2[11] = "%$ \t\e\n @#\v";
	char *dst1;
	char *dst2;
	dst1 = (str1 - 3);
	dst2 = (str2 - 3);
	char *check1;
	char *check2;
	size_t len = 5;
	int i = 0;
	check1 = memcpy(dst1, str1, len);
	check2 = ft_memcpy(dst2, str2, len);
	XCTAssert(check1 == dst1, @"memcpy did not return expected address. returned %p, expected %p.", check1, dst1);
	XCTAssert(check2 == dst2, @"ft_memcpy did not return expected address. returned %p, expected %p.", check2, dst2);
	while (i < len)
	{
		XCTAssert(check1[i] == check2[i], @"incorrect value on pos %i in dst, expected %c, returned %c", i, check1[i], check2[i]);
		XCTAssert(str1[i] == str2[i], @"incorrect value on pos %i in src, expected %c, returned %c", i, str1[i], str2[i]);
		i++;
	}
}

- (void)testMemCpyOverlappingBeforeStartOfWeirdStringTwice {
	char str1[11] = "%$ \t\e\n @#\v";
	char str2[11] = "%$ \t\e\n @#\v";
	char *dst1;
	char *dst2;
	dst1 = (str1 - 3);
	dst2 = (str2 - 3);
	char *check1;
	char *check2;
	size_t len = 5;
	int i = 0;
	check1 = memcpy(dst1, str1, len);
	check2 = ft_memcpy(dst2, str2, len);
	dst1 += 2;
	dst2 += 2;
	check1 = memcpy(dst1, str1, len);
	check2 = ft_memcpy(dst2, str2, len);
	XCTAssert(check1 == dst1, @"memcpy did not return expected address. returned %p, expected %p.", check1, dst1);
	XCTAssert(check2 == dst2, @"ft_memcpy did not return expected address. returned %p, expected %p.", check2, dst2);
	while (i < len)
	{
		XCTAssert(check1[i] == check2[i], @"incorrect value on pos %i in dst, expected %c, returned %c", i, check1[i], check2[i]);
		XCTAssert(str1[i] == str2[i], @"incorrect value on pos %i in src, expected %c, returned %c", i, str1[i], str2[i]);
		i++;
	}
}

@end
