//
//  extra_strcpy.m
//  ft
//
//  Created by Liewe Gutter on 30/01/2019.
//  Copyright © 2019 Liewe Gutter. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface extra_strcpy : XCTestCase

@end

@implementation extra_strcpy

//
//  extra_strcpy.m
//  ft
//
//  Created by Liewe Gutter on 30/01/2019.
//  Copyright © 2019 Liewe Gutter. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface extra_strcpy : XCTestCase

@end

@implementation extra_strcpy

//TESTS BELOW TEST OVERLAP, WHICH IS UNDEFINED BEHAVIOUR.(MOSTLY GIVES SIGABORT)
//JUST USE THIS AS INFO ON HOW YOUR FUNCTION COMPARES TO THE REAL strcpy.
- (void)testStrCpyOverlappingAfterStartOfSimpleString {
	char str2[11] = "1234567890";
	char str1[11] = "1234567890";
	char *dst1;
	char *dst2;
	dst1 = (str1 + 3);
	dst2 = (str2 + 3);
	char *check1;
	char *check2;
	size_t len = 5;
	int i = 0;
	check1 = strcpy(dst1, str1);
	check2 = ft_strcpy(dst2, str2);
	XCTAssert(check1 == dst1, @"strcpy did not return expected address. returned %p, expected %p.", check1, dst1);
	XCTAssert(check2 == dst2, @"ft_strcpy did not return expected address. returned %p, expected %p.", check2, dst2);
	while (i < len)
	{
		XCTAssert(check1[i] == check2[i], @"incorrect value on pos %i in dst, expected %c, returned %c", i, check1[i], check2[i]);
		XCTAssert(str1[i] == str2[i], @"incorrect value on pos %i in src, expected %c, returned %c", i, str1[i], str2[i]);
		i++;
	}
}


- (void)testStrCpyOverlappingBeforeStartOfSimpleString {
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
	check1 = strcpy(dst1, str1);
	check2 = ft_strcpy(dst2, str2);
	XCTAssert(check1 == dst1, @"strcpy did not return expected address. returned %p, expected %p.", check1, dst1);
	XCTAssert(check2 == dst2, @"ft_strcpy did not return expected address. returned %p, expected %p.", check2, dst2);
	while (i < len)
	{
		XCTAssert(check1[i] == check2[i], @"incorrect value on pos %i in dst, expected %c, returned %c", i, check1[i], check2[i]);
		XCTAssert(str1[i] == str2[i], @"incorrect value on pos %i in src, expected %c, returned %c", i, str1[i], str2[i]);
		i++;
	}
}

- (void)testStrCpyOverlappingBeforeStartOfSimpleStringTwice {
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
	check1 = strcpy(dst1, str1);
	check2 = ft_strcpy(dst2, str2);
	dst1 += 2;
	dst2 += 2;
	check1 = strcpy(dst1, str1);
	check2 = ft_strcpy(dst2, str2);
	XCTAssert(check1 == dst1, @"strcpy did not return expected address. returned %p, expected %p.", check1, dst1);
	XCTAssert(check2 == dst2, @"ft_strcpy did not return expected address. returned %p, expected %p.", check2, dst2);
	while (i < len)
	{
		XCTAssert(check1[i] == check2[i], @"incorrect value on pos %i in dst, expected %c, returned %c", i, check1[i], check2[i]);
		XCTAssert(str1[i] == str2[i], @"incorrect value on pos %i in src, expected %c, returned %c", i, str1[i], str2[i]);
		i++;
	}
}

- (void)testStrCpyOverlappingAfterStartOfWeirdString {
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
	check1 = strcpy(dst1, str1);
	check2 = ft_strcpy(dst2, str2);
	XCTAssert(check1 == dst1, @"strcpy did not return expected address. returned %p, expected %p.", check1, dst1);
	XCTAssert(check2 == dst2, @"ft_strcpy did not return expected address. returned %p, expected %p.", check2, dst2);
	while (i < len)
	{
		XCTAssert(check1[i] == check2[i], @"incorrect value on pos %i in dst, expected %c, returned %c", i, check1[i], check2[i]);
		XCTAssert(str1[i] == str2[i], @"incorrect value on pos %i in src, expected %c, returned %c", i, str1[i], str2[i]);
		i++;
	}
}


- (void)testStrCpyOverlappingBeforeStartOfWeirdString {
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
	check1 = strcpy(dst1, str1);
	check2 = ft_strcpy(dst2, str2);
	XCTAssert(check1 == dst1, @"strcpy did not return expected address. returned %p, expected %p.", check1, dst1);
	XCTAssert(check2 == dst2, @"ft_strcpy did not return expected address. returned %p, expected %p.", check2, dst2);
	while (i < len)
	{
		XCTAssert(check1[i] == check2[i], @"incorrect value on pos %i in dst, expected %c, returned %c", i, check1[i], check2[i]);
		XCTAssert(str1[i] == str2[i], @"incorrect value on pos %i in src, expected %c, returned %c", i, str1[i], str2[i]);
		i++;
	}
}

- (void)testStrCpyOverlappingBeforeStartOfWeirdStringTwice {
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
	check1 = strcpy(dst1, str1);
	check2 = ft_strcpy(dst2, str2);
	dst1 += 2;
	dst2 += 2;
	check1 = strcpy(dst1, str1);
	check2 = ft_strcpy(dst2, str2);
	XCTAssert(check1 == dst1, @"strcpy did not return expected address. returned %p, expected %p.", check1, dst1);
	XCTAssert(check2 == dst2, @"ft_strcpy did not return expected address. returned %p, expected %p.", check2, dst2);
	while (i < len)
	{
		XCTAssert(check1[i] == check2[i], @"incorrect value on pos %i in dst, expected %c, returned %c", i, check1[i], check2[i]);
		XCTAssert(str1[i] == str2[i], @"incorrect value on pos %i in src, expected %c, returned %c", i, str1[i], str2[i]);
		i++;
	}
}


@end


@end
