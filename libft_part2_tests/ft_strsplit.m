//
//  ft_strsplit.m
//  ft
//
//  Created by Liewe Gutter on 21/01/2019.
//  Copyright © 2019 Liewe Gutter. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "libft.h"

@interface ft_StrSplit : XCTestCase

@end

@implementation ft_StrSplit

- (void)testNormalString {
	char *str = (char *)malloc(sizeof(char) * 5);
	char **ret;
	int i = 0;

	str = "test";
	ret = ft_strsplit(str, '*');
	while (i < 5)
	{
		XCTAssert(ret[0][i] == str[i], @"StrSplit failed at pos %i, expected %c, returned %c", i, str[i], ret[0][i]);
		i++;
	}
	free(ret[0]); //if this gives SIGABORT, you did not allocate your return string properly.
	free(ret); //if this gives SIGABORT, you did not allocate your return array properly.
}

- (void)testNormalSplitString {
	char *str = (char *)malloc(6);
	char **ret;
	char **check = (char **)malloc(sizeof(char *) * 2);
	check[0] = (char *)malloc(3);
	check[1] = (char *)malloc(3);

	int i = 0;

	str = "te*st";
	check[0] = "te";
	check[1] = "st";
	ret = ft_strsplit(str, '*');
	while (i < 3)
	{
		XCTAssert(ret[0][i] == check[0][i], @"StrSplit failed at pos %i, expected %c, returned %c", i, check[0][i], ret[0][i]);
		i++;
	}
	i = 0;
	while (i < 3)
	{
		XCTAssert(ret[1][i] == check[1][i], @"StrSplit failed at pos %i, expected %c, returned %c", i, check[1][i], ret[1][i]);
		i++;
	}
	free(ret[0]); //if this gives SIGABORT, you did not allocate your return string properly.
	free(ret[1]); //if this gives SIGABORT, you did not allocate your return string properly.
	free(ret); //if this gives SIGABORT, you did not allocate your return array properly.
}

- (void)testNormalSplitStringWithExtendedAsciiDelim {
	char *str = (char *)malloc(6);
	char **ret;
	char **check = (char **)malloc(sizeof(char *) * 2);
	check[0] = (char *)malloc(3);
	check[1] = (char *)malloc(3);
	unsigned char delim = 227;

	int i = 0;

	str = "te\xe3st";
	check[0] = "te";
	check[1] = "st";
	ret = ft_strsplit(str, delim);
	while (i < 3)
	{
		XCTAssert(ret[0][i] == check[0][i], @"StrSplit failed at pos %i, expected %c, returned %c", i, check[0][i], ret[0][i]);
		i++;
	}
	i = 0;
	while (i < 3)
	{
		XCTAssert(ret[1][i] == check[1][i], @"StrSplit failed at pos %i, expected %c, returned %c", i, check[1][i], ret[1][i]);
		i++;
	}
	free(ret[0]); //if this gives SIGABORT, you did not allocate your return string properly.
	free(ret[1]); //if this gives SIGABORT, you did not allocate your return string properly.
	free(ret); //if this gives SIGABORT, you did not allocate your return array properly.
}

- (void)testCrowdedSplitString {
	char *str = (char *)malloc(10);
	char **ret;
	char **check = (char **)malloc(sizeof(char *) * 3);
	check[0] = (char *)malloc(3);
	check[1] = (char *)malloc(2);
	check[2] = (char *)malloc(2);
	int i = 0;

	str = "*te**s*t*";
	check[0] = "te";
	check[1] = "s";
	check[2] = "t";
	ret = ft_strsplit(str, '*');
	while (i < 3)
	{
		XCTAssert(ret[0][i] == check[0][i], @"StrSplit failed at string 1, pos %i, expected %c, returned %c", i, check[0][i], ret[0][i]);
		i++;
	}
	XCTAssert(ret[1][0] == check[1][0], @"StrSplit failed at string 2, expected %c, returned %c",check[1][0], ret[1][0]);
	XCTAssert(ret[2][0] == check[2][0], @"StrSplit failed at string 3, expected %c, returned %c",check[2][0], ret[2][0]);
	free(ret[0]); //if this gives SIGABORT, you did not allocate your return string properly.
	free(ret[1]); //if this gives SIGABORT, you did not allocate your return string properly.
	free(ret[2]); //if this gives SIGABORT, you did not allocate your return string properly.
	free(ret); //if this gives SIGABORT, you did not allocate your return array properly.
}
- (void)testCrowdedSplitStringWithWhiteSpace {
	char *str = (char *)malloc(15);
	char **ret;
	char **check = (char **)malloc(sizeof(char *) * 5);
	check[0] = (char *)malloc(4);
	check[1] = (char *)malloc(2);
	check[2] = (char *)malloc(2);
	check[3] = (char *)malloc(3);
	check[4] = (char *)malloc(3);
	int i = 0;

	str = "* te* *s* t*  ";
	check[0] = " te";
	check[1] = " ";
	check[2] = "s";
	check[3] = " t";
	check[4] = "  ";
	ret = ft_strsplit(str, '*');
	while (i < 4)
	{
		XCTAssert(ret[0][i] == check[0][i], @"StrSplit failed at string 1, pos %i, expected %c, returned %c", i, check[0][i], ret[0][i]);
		i++;
	}
	XCTAssert(ret[1][0] == check[1][0], @"StrSplit failed at string 2, expected %c, returned %c",check[1][0], ret[1][0]);
	XCTAssert(ret[2][0] == check[2][0], @"StrSplit failed at string 3, expected %c, returned %c",check[2][0], ret[2][0]);
	while (i < 3)
	{
		XCTAssert(ret[3][i] == check[3][i], @"StrSplit failed at string 4, pos %i, expected %c, returned %c", i, check[3][i], ret[3][i]);
		i++;
	}
	i++;
	while (i < 3)
	{
		XCTAssert(ret[4][i] == check[4][i], @"StrSplit failed at string 5, pos %i, expected %c, returned %c", i, check[4][i], ret[4][i]);
		i++;
	}
	free(ret[0]); //if this gives SIGABORT, you did not allocate your return string properly.
	free(ret[1]); //if this gives SIGABORT, you did not allocate your return string properly.
	free(ret[2]); //if this gives SIGABORT, you did not allocate your return string properly.
	free(ret[3]); //if this gives SIGABORT, you did not allocate your return string properly.
	free(ret[4]); //if this gives SIGABORT, you did not allocate your return string properly.
	free(ret); //if this gives SIGABORT, you did not allocate your return array properly.
}

- (void)testEmptyString {
	char *str = (char *)malloc(sizeof(char) * 1);
	char **ret;
	int i = 0;

	str = "";
	ret = ft_strsplit(str, '*');
	XCTAssert(ret[0] == NULL, @"StrSplit failed at pos %i, expected %c, returned %c", i, str[i], ret[0][i]);
		i++;
	free(ret[0]); //if this gives SIGABORT, you did not allocate your return string properly.
	free(ret); //if this gives SIGABORT, you did not allocate your return array properly.
}

- (void)testNormalStringEmptyDelim {
	char *str = (char *)malloc(sizeof(char) * 6);
	char **ret;
	int i = 0;

	str = "te*st";
	ret = ft_strsplit(str, '\0');
	while (i < 5)
	{
		XCTAssert(ret[0][i] == str[i], @"StrSplit failed at pos %i, expected %c, returned %c", i, str[i], ret[0][i]);
		i++;
	}
	free(ret[0]); //if this gives SIGABORT, you did not allocate your return string properly.
	free(ret); //if this gives SIGABORT, you did not allocate your return array properly.
}

@end
