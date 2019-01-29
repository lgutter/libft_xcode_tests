//
//  ft_BZero.m
//  ft
//
//  Created by Liewe Gutter on 25/01/2019.
//  Copyright © 2019 Liewe Gutter. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "libft.h"

@interface ft_BZero : XCTestCase

@end

@implementation ft_BZero

- (void)testBZero10TimesinStringOf10 {
	unsigned char *str1 = (unsigned char*)malloc(10);
	unsigned char *str2 = (unsigned char*)malloc(10);
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
	bzero(str1, len);
	ft_bzero(str2, len);
	while (c < len)
	{
		XCTAssert(str1[c] == str2[c], @"ft_bzero does not match bzero at pos %i, returned %c instead of %c", c, str2[c], str1[c]);
		c++;
	}
}

- (void)testBZeroWith7TimesTerm0InStringOf10 {
	unsigned char *str1 = (unsigned char*)malloc(10);
	unsigned char *str2 = (unsigned char*)malloc(10);
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
	bzero(str1, len);
	ft_bzero(str2, len);
	while (c < 10)
	{
		XCTAssert(str1[c] == str2[c], @"ft_bzero does not match bzero at pos %i, returned %c instead of %c", c, str2[c], str1[c]);
		c++;
	}
}

- (void)testBZeroWith0TimesTerm0 {
	unsigned char *str1 = (unsigned char*)malloc(0);
	unsigned char *str2 = (unsigned char*)malloc(0);
	int	c = 0;
	size_t len = 0;

	bzero(str1, len);
	ft_bzero(str2, len);
	while (c < len)
	{
		XCTAssert(str1[c] == str2[c], @"ft_bzero does not match bzero at pos %i, returned %c instead of %c", c, str2[c], str1[c]);
		c++;
	}
}

- (void)testBZeroWith10Timesa {
	unsigned char *str1 = (unsigned char*)malloc(10);
	unsigned char *str2 = (unsigned char*)malloc(10);
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
	bzero(str1, len);
	ft_bzero(str2, len);
	while (c < len)
	{
		XCTAssert(str1[c] == str2[c], @"ft_bzero does not match bzero at pos %i, returned %c instead of %c", c, str2[c], str1[c]);
		c++;
	}
}

- (void)testBZeroWith10TimesNewLine {
	unsigned char *str1 = (unsigned char*)malloc(10);
	unsigned char *str2 = (unsigned char*)malloc(10);
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
	bzero(str1, len);
	ft_bzero(str2, len);
	while (c < len)
	{
		XCTAssert(str1[c] == str2[c], @"ft_bzero does not match bzero at pos %i, returned %c instead of %c", c, str2[c], str1[c]);
		c++;
	}
}


- (void)testBZeroWith5TimesaInEmptyString {
	unsigned char *str1 = (unsigned char*)malloc(0);
	unsigned char *str2 = (unsigned char*)malloc(0);
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
	bzero(str1, len);
	ft_bzero(str2, len);
	while (c < len)
	{
		XCTAssert(str1[c] == str2[c], @"ft_bzero does not match bzero at pos %i, returned %c instead of %c", c, str2[c], str1[c]);
		c++;
	}
}

//WILL BREAK REAL AND FT BZERO.
- (void)testBZeroWithVoidStrings {
	int	c1 = 0;
	size_t len1 = 10;
	int	c2 = 0;
	size_t len2 = 10;

	bzero(NULL, c, len);
	ft_bzero(NULL, c2, len2); //Will it break? YES
	while (c1 < len1)
	{
		XCTAssert(str1[c1] == str2[c1], @"ft_bzero does not match bzero at pos %i, returned %c instead of %c", c1, str2[c1], str1[c1]);
	}
}


@end
