//
//  ft_MemSet.m
//  ft
//
//  Created by Liewe Gutter on 24/01/2019.
//  Copyright © 2019 Liewe Gutter. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "libft.h"

@interface ft_MemSet : XCTestCase

@end

@implementation ft_MemSet

- (void)testMemSetWith10TimesTerm0 {
	unsigned char *str1 = (unsigned char*)malloc(10);
	unsigned char *str2 = (unsigned char*)malloc(10);
	unsigned char *check1;
	unsigned char *check2;
	int	c = 0;
	size_t len = 10;
	while (c < len)
	{
		str1[c] = ('0' + c);
		c++;
	}
	while (c > 0)
	{
		str2[c] = ('9' - c);
		c--;
	}

	check1 = memset(str1, c, len);
	check2 = ft_memset(str2, c, len);
	XCTAssert(check1 == str1 && check2 == str2, @"return value 1 is %p, input 1 %p, return value 2 is %p, input 2 %p.", str1, check1, str2, check2);
	while (c < len)
	{
		XCTAssert(str1[c] == str2[c], @"ft_memset does not match memset at pos %i, returned %c instead of %c", c, str2[c], str1[c]);
		c++;
	}
}

- (void)testMemsetWith7TimesTerm0InStringOf10 {
	unsigned char *str1 = (unsigned char*)malloc(10);
	unsigned char *str2 = (unsigned char*)malloc(10);
	unsigned char *check1;
	unsigned char *check2;
	int	c = 0;
	size_t len = 10;
	while (c < len)
	{
		str1[c] = ('9');
		c++;
	}
	while (c > 0)
	{
		str2[c] = ('9');
		c--;
	}
	len = 7;
	check1 = memset(str1, c, len);
	check2 = ft_memset(str2, c, len);
	XCTAssert(check1 == str1 && check2 == str2, @"return value 1 is %p, input 1 %p, return value 2 is %p, input 2 %p.", str1, check1, str2, check2);
	while (c < 10)
	{
		XCTAssert(str1[c] == str2[c], @"ft_memset does not match memset at pos %i, returned %c instead of %c", c, str2[c], str1[c]);
		c++;
	}
}

- (void)testMemSetWith0TimesTerm0 {
	unsigned char *str1 = (unsigned char*)malloc(0);
	unsigned char *str2 = (unsigned char*)malloc(0);
	unsigned char *check1;
	unsigned char *check2;
	int	c = 0;
	size_t len = 0;

	check1 = memset(str1, c, len);
	check2 = ft_memset(str2, c, len);
	XCTAssert(check1 == str1 && check2 == str2, @"return value 1 is %p, input 1 %p, return value 2 is %p, input 2 %p.", str1, check1, str2, check2);
	while (c < len)
	{
		XCTAssert(str1[c] == str2[c], @"ft_memset does not match memset at pos %i, returned %c instead of %c", c, str2[c], str1[c]);
		c++;
	}
}

- (void)testMemSetWith10Timesa {
	unsigned char *str1 = (unsigned char*)malloc(10);
	unsigned char *str2 = (unsigned char*)malloc(10);
	unsigned char *check1;
	unsigned char *check2;
	int	c = 0;
	size_t len = 10;
	while (c < len)
	{
		str1[c] = ('0' + c);
		c++;
	}
	while (c > 0)
	{
		str2[c] = ('9' - c);
		c--;
	}
	c = 97;
	check1 = memset(str1, c, len);
	check2 = ft_memset(str2, c, len);
	c = 0;
	XCTAssert(check1 == str1 && check2 == str2, @"return value 1 is %p, input 1 %p, return value 2 is %p, input 2 %p.", str1, check1, str2, check2);
	while (c < len)
	{
		XCTAssert(str1[c] == str2[c], @"ft_memset does not match memset at pos %i, returned %c instead of %c", c, str2[c], str1[c]);
		c++;
	}
}

- (void)testMemSetWith10TimesNewLine {
	unsigned char *str1 = (unsigned char*)malloc(10);
	unsigned char *str2 = (unsigned char*)malloc(10);
	int	c = 0;
	size_t len = 10;
	unsigned char *check1;
	unsigned char *check2;
	while (c < len)
	{
		str1[c] = ('0' + c);
		c++;
	}
	while (c > 0)
	{
		str2[c] = ('9' - c);
		c--;
	}
	c = '\n';
	check1 = memset(str1, c, len);
	check2 = ft_memset(str2, c, len);
	c = 0;
	XCTAssert(check1 == str1 && check2 == str2, @"return value 1 is %p, input 1 %p, return value 2 is %p, input 2 %p.", str1, check1, str2, check2);
	while (c < len)
	{
		XCTAssert(str1[c] == str2[c], @"ft_memset does not match memset at pos %i, returned %c instead of %c", c, str2[c], str1[c]);
		c++;
	}
}


- (void)testMemSetWith5TimesaInEmptyString {
	unsigned char *str1 = (unsigned char*)malloc(0);
	unsigned char *str2 = (unsigned char*)malloc(0);
	unsigned char *check1;
	unsigned char *check2;
	int	c = 0;
	size_t len = 5;
	while (c < len)
	{
		str1[c] = ('0' + c);
		c++;
	}
	while (c > 0)
	{
		str2[c] = ('9' - c);
		c--;
	}
	c = 97;
	check1 = memset(str1, c, len);
	check2 = ft_memset(str2, c, len);
	XCTAssert(check1 == str1 && check2 == str2, @"return value 1 is %p, input 1 %p, return value 2 is %p, input 2 %p.", str1, check1, str2, check2);
	while (c < len)
	{
		XCTAssert(str1[c] == str2[c], @"ft_memset does not match memset at pos %i, returned %c instead of %c", c, str2[c], str1[c]);
		c++;
	}
}
//THESE BREAK BOTH THE REAL AND FT FUNCTIONS
- (void)testMemSetWith10Times1InIntArr {
	int *str1 = (int *)malloc(sizeof(int) * 10);
	int *str2 = (int *)malloc(sizeof(int) * 10);
	int	c = 1;
	size_t len = (sizeof(int) * 10);
	int *check1;
	int *check2;
	check1 = memset(str1, c, len);
	check2 = ft_memset(str2, c, len);
	c = 0;
	XCTAssert(check1 == str1 && check2 == str2, @"return value 1 is %p, input 1 %p, return value 2 is %p, input 2 %p.", str1, check1, str2, check2);
	while (c < len)
	{
		XCTAssert(str1[c] == str2[c], @"ft_memset does not match memset at pos %i, returned %i instead of %i", c, str2[c], str1[c]);
		c++;
	}
}

- (void)testMemSetWithVoidStrings {
	memset(NULL, 1, 1);
	ft_memset(NULL, 1, 1); //Will it break? YES
}

@end
