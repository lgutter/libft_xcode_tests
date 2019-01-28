//
//  ft_MemMove.m
//  ft
//
//  Created by Liewe Gutter on 28/01/2019.
//  Copyright © 2019 Liewe Gutter. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "libft.h"

@interface ft_MemMove : XCTestCase

@end

@implementation ft_MemMove

- (void)testMemMoveWithPartOfSimpleString {
	char *str1 = (char *)malloc(sizeof(char) * 10);
	char *str2 = (char *)malloc(sizeof(char) * 10);
	str1 = "123456789";
	str2 = "123456789";
	char *dst1 = (char *)malloc(sizeof(char) * 6);
	char *dst2 = (char *)malloc(sizeof(char) * 6);
	char *check1;
	char *check2;
	size_t len = 6;
	int i = 0;
	check1 = memmove(dst1, str1, len);
	check2 = ft_memmove(dst2, str2, len);
	XCTAssert(check1 == dst1, @"memmove did not return expected address. returned %p, expected %p.", check1, dst1);
	XCTAssert(check2 == dst2, @"ft_memmove did not return expected address. returned %p, expected %p.", check2, dst2);
	while (i < 6)
	{
		XCTAssert(check1[i] == check2[i], @"incorrect value on pos %i, expected %c, returned %c", i, check1[i], check2[i]);
		i++;
	}
}

- (void)testMemMoveWithCompleteSimpleString {
	char *str1 = (char *)malloc(sizeof(char) * 10);
	char *str2 = (char *)malloc(sizeof(char) * 10);
	str1 = "123456789";
	str2 = "123456789";
	char *dst1 = (char *)malloc(sizeof(char) * 10);
	char *dst2 = (char *)malloc(sizeof(char) * 10);
	char *check1;
	char *check2;
	size_t len = 10;
	int i = 0;
	check1 = memmove(dst1, str1, len);
	check2 = ft_memmove(dst2, str2, len);
	XCTAssert(check1 == dst1, @"memmove did not return expected address. returned %p, expected %p.", check1, dst1);
	XCTAssert(check2 == dst2, @"ft_memmove did not return expected address. returned %p, expected %p.", check2, dst2);
	while (i < 10)
	{
		XCTAssert(check1[i] == check2[i], @"incorrect value on pos %i, expected %c, returned %c", i, check1[i], check2[i]);
		i++;
	}
}

- (void)testMemMoveWithEmptyString {
	char *str1 = (char *)malloc(sizeof(char) * 1);
	char *str2 = (char *)malloc(sizeof(char) * 1);
	str1 = "";
	str2 = "";
	char *dst1 = (char *)malloc(sizeof(char) * 1);
	char *dst2 = (char *)malloc(sizeof(char) * 1);
	char *check1;
	char *check2;
	size_t len = 1;
	int i = 0;
	check1 = memmove(dst1, str1, len);
	check2 = ft_memmove(dst2, str2, len);
	XCTAssert(check1 == dst1, @"memmove did not return expected address. returned %p, expected %p.", check1, dst1);
	XCTAssert(check2 == dst2, @"ft_memmove did not return expected address. returned %p, expected %p.", check2, dst2);
	while (i < 1)
	{
		XCTAssert(check1[i] == check2[i], @"incorrect value on pos %i, expected %c, returned %c", i, check1[i], check2[i]);
		i++;
	}
}

- (void)testMemMoveWithMoreThanSimpleString {
	char *str1 = (char *)malloc(sizeof(char) * 10);
	char *str2 = (char *)malloc(sizeof(char) * 10);
	str1 = "123456789";
	str2 = "123456789";
	char *dst1 = (char *)malloc(sizeof(char) * 12);
	char *dst2 = (char *)malloc(sizeof(char) * 12);
	char *check1;
	char *check2;
	size_t len = 12;
	int i = 0;
	check1 = memmove(dst1, str1, len);
	check2 = ft_memmove(dst2, str2, len);
	XCTAssert(check1 == dst1, @"memmove did not return expected address. returned %p, expected %p.", check1, dst1);
	XCTAssert(check2 == dst2, @"ft_memmove did not return expected address. returned %p, expected %p.", check2, dst2);
	while (i < 10)
	{
		XCTAssert(check1[i] == check2[i], @"incorrect value on pos %i, expected %c, returned %c", i, check1[i], check2[i]);
		i++;
	}
}

- (void)testMemMoveWithCompleteWeirdString {
	char *str1 = (char *)malloc(sizeof(char) * 10);
	str1 = "%$ \t\e\n @#";
	char *dst1 = (char *)malloc(sizeof(char) * 10);
	char *dst2 = (char *)malloc(sizeof(char) * 10);
	char *check1;
	char *check2;
	size_t len = 10;
	int i = 0;
	check1 = memmove(dst1, str1, len);
	check2 = ft_memmove(dst2, str1, len);
	XCTAssert(check1 == dst1, @"memmove did not return expected address. returned %p, expected %p.", check1, dst1);
	XCTAssert(check2 == dst2, @"ft_memmove did not return expected address. returned %p, expected %p.", check2, dst2);
	while (i < 10)
	{
		XCTAssert(check1[i] == check2[i], @"incorrect value on pos %i, expected %c, returned %c", i, check1[i], check2[i]);
		i++;
	}
}

- (void)testMemMoveOverlappingAfterStartOfSimpleString {
	char str1[11] = "1234567890";
	char str2[11] = "1234567890";
	char *dst1;
	char *dst2;
	dst1 = (str1 + 3);
	dst2 = (str2 + 3);
	char *check1;
	char *check2;
	size_t len = 5;
	int i = 0;
	check1 = memmove(dst1, str1, len);
	check2 = ft_memmove(dst2, str2, len);
	XCTAssert(check1 == dst1, @"memmove did not return expected address. returned %p, expected %p.", check1, dst1);
	XCTAssert(check2 == dst2, @"ft_memmove did not return expected address. returned %p, expected %p.", check2, dst2);
	while (i < len)
	{
		XCTAssert(check1[i] == check2[i], @"incorrect value on pos %i in dst, expected %c, returned %c", i, check1[i], check2[i]);
		XCTAssert(str1[i] == str2[i], @"incorrect value on pos %i in src, expected %c, returned %c", i, str1[i], str2[i]);
		i++;
	}
}


- (void)testMemMoveOverlappingBeforeStartOfSimpleString {
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
	check1 = memmove(dst1, str1, len);
	check2 = ft_memmove(dst2, str2, len);
	XCTAssert(check1 == dst1, @"memmove did not return expected address. returned %p, expected %p.", check1, dst1);
	XCTAssert(check2 == dst2, @"ft_memmove did not return expected address. returned %p, expected %p.", check2, dst2);
	while (i < len)
	{
		XCTAssert(check1[i] == check2[i], @"incorrect value on pos %i in dst, expected %c, returned %c", i, check1[i], check2[i]);
		XCTAssert(str1[i] == str2[i], @"incorrect value on pos %i in src, expected %c, returned %c", i, str1[i], str2[i]);
		i++;
	}
}

- (void)testMemMoveOverlappingBeforeStartOfSimpleStringTwice {
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
	check1 = memmove(dst1, str1, len);
	check2 = ft_memmove(dst2, str2, len);
	dst1 += 2;
	dst2 += 2;
	check1 = memmove(dst1, str1, len);
	check2 = ft_memmove(dst2, str2, len);
	XCTAssert(check1 == dst1, @"memmove did not return expected address. returned %p, expected %p.", check1, dst1);
	XCTAssert(check2 == dst2, @"ft_memmove did not return expected address. returned %p, expected %p.", check2, dst2);
	while (i < len)
	{
		XCTAssert(check1[i] == check2[i], @"incorrect value on pos %i in dst, expected %c, returned %c", i, check1[i], check2[i]);
		XCTAssert(str1[i] == str2[i], @"incorrect value on pos %i in src, expected %c, returned %c", i, str1[i], str2[i]);
		i++;
	}
}

//REAL MEMMOVE GETS SIGABORT, SO SO SHOULD FT_MEMMOVE. TEST MANUALLY!
//- (void)testMemMoveOverlappingAfterEndofSimpleString {
//	char str1[11] = "1234567890";
//	char str2[11] = "1234567890";
//	char *dst1;
//	char *dst2;
//	dst1 = (str1 + 7);
//	dst2 = (str2 + 7);
//	char *check1;
//	char *check2;
//	size_t len = 6;
//	int i = 0;
//	check1 = memmove(dst1, str1, len);
//	check2 = ft_memmove(dst2, str2, len);
//	XCTAssert(check1 == dst1, @"memmove did not return expected address. returned %p, expected %p.", check1, dst1);
//	XCTAssert(check2 == dst2, @"ft_memmove did not return expected address. returned %p, expected %p.", check2, dst2);
//	while (i < 11)
//	{
//		XCTAssert(str1[i] == str2[i], @"incorrect value on pos %i in src, expected %c, returned %c", i, str1[i], str2[i]);
//		i++;
//	}
//}

- (void)testMemMoveOverlappingAfterStartOfWeirdString {
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
	check1 = memmove(dst1, str1, len);
	check2 = ft_memmove(dst2, str2, len);
	XCTAssert(check1 == dst1, @"memmove did not return expected address. returned %p, expected %p.", check1, dst1);
	XCTAssert(check2 == dst2, @"ft_memmove did not return expected address. returned %p, expected %p.", check2, dst2);
	while (i < len)
	{
		XCTAssert(check1[i] == check2[i], @"incorrect value on pos %i in dst, expected %c, returned %c", i, check1[i], check2[i]);
		XCTAssert(str1[i] == str2[i], @"incorrect value on pos %i in src, expected %c, returned %c", i, str1[i], str2[i]);
		i++;
	}
}


- (void)testMemMoveOverlappingBeforeStartOfWeirdString {
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
	check1 = memmove(dst1, str1, len);
	check2 = ft_memmove(dst2, str2, len);
	XCTAssert(check1 == dst1, @"memmove did not return expected address. returned %p, expected %p.", check1, dst1);
	XCTAssert(check2 == dst2, @"ft_memmove did not return expected address. returned %p, expected %p.", check2, dst2);
	while (i < len)
	{
		XCTAssert(check1[i] == check2[i], @"incorrect value on pos %i in dst, expected %c, returned %c", i, check1[i], check2[i]);
		XCTAssert(str1[i] == str2[i], @"incorrect value on pos %i in src, expected %c, returned %c", i, str1[i], str2[i]);
		i++;
	}
}

- (void)testMemMoveOverlappingBeforeStartOfWeirdStringTwice {
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
	check1 = memmove(dst1, str1, len);
	check2 = ft_memmove(dst2, str2, len);
	dst1 += 2;
	dst2 += 2;
	check1 = memmove(dst1, str1, len);
	check2 = ft_memmove(dst2, str2, len);
	XCTAssert(check1 == dst1, @"memmove did not return expected address. returned %p, expected %p.", check1, dst1);
	XCTAssert(check2 == dst2, @"ft_memmove did not return expected address. returned %p, expected %p.", check2, dst2);
	while (i < len)
	{
		XCTAssert(check1[i] == check2[i], @"incorrect value on pos %i in dst, expected %c, returned %c", i, check1[i], check2[i]);
		XCTAssert(str1[i] == str2[i], @"incorrect value on pos %i in src, expected %c, returned %c", i, str1[i], str2[i]);
		i++;
	}
}

//REAL MEMMOVE GETS SIGABORT, SO SO SHOULD FT_MEMMOVE. TEST MANUALLY!
//- (void)testMemMoveOverlappingAfterEndofWeirdString {
//	char str1[11] = "%$ \t\e\n @#\v";
//	char str2[11] = "%$ \t\e\n @#\v";
//	char *dst1;
//	char *dst2;
//	dst1 = (str1 + 7);
//	dst2 = (str2 + 7);
//	char *check1;
//	char *check2;
//	size_t len = 6;
//	int i = 0;
//	check1 = memmove(dst1, str1, len);
//	check2 = ft_memmove(dst2, str2, len);
//	XCTAssert(check1 == dst1, @"memmove did not return expected address. returned %p, expected %p.", check1, dst1);
//	XCTAssert(check2 == dst2, @"ft_memmove did not return expected address. returned %p, expected %p.", check2, dst2);
//	while (i < len)
//	{
//		XCTAssert(check1[i] == check2[i], @"incorrect value on pos %i in dst, expected %c, returned %c", i, check1[i], check2[i]);
//		XCTAssert(str1[i] == str2[i], @"incorrect value on pos %i in src, expected %c, returned %c", i, str1[i], str2[i]);
//		i++;
//	}
//}

@end
