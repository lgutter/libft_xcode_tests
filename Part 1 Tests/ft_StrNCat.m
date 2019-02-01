//
//  ft_StrNCat.m
//  ft
//
//  Created by Liewe Gutter on 30/01/2019.
//  Copyright © 2019 Liewe Gutter. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "libft.h"

@interface ft_StrNCat : XCTestCase

@end

@implementation ft_StrNCat

- (void)testWithSimpleStringsThatFitPerfectly {
	size_t len = 12;
	size_t index = 0;
	size_t limit = 0;
	char *string1 = (char *)malloc(sizeof(char) * len);
	char *string2 = (char *)malloc(sizeof(char) * len);
	char *cat = "atest";
	char *check1;
	char *check2;
	while (limit <= len)
	{
		index = 0;
		string1 = memset(string1, 42, len);
		string2 = memset(string2, 42, len);
		string1 = strcpy(string1, "Thisis");
		string2 = strcpy(string2, "Thisis");
		check1 = strncat(string1, cat, limit);
		check2 = ft_strncat(string2, cat, limit);
		XCTAssert(check1 == string1, @"strncat returned wrong address. returned %p, expected %p.", check1, string1);
		XCTAssert(check2 == string2, @"strncat returned wrong address. returned %p, expected %p.", check2, string2);
		while (index < strlen(string1))
		{
			XCTAssert(check1[index] == check2[index], @"ft_strncat fails on pos %zu with limit %zu. strncat returned %c, ft_strncat returned %c", index, limit, check1[index], check2[index]);
			index++;
		}
		limit++;
	}
	free(string1);
	free(string2);
}

- (void)testWithSimpleStringsThatAreShorter {
	size_t len = 12;
	size_t index = 0;
	size_t limit = 0;
	char *string1 = (char *)malloc(sizeof(char) * len);
	char *string2 = (char *)malloc(sizeof(char) * len);
	char *cat = "test";
	char *check1;
	char *check2;
	while (limit <= len)
	{
		index = 0;
		string1 = memset(string1, 42, len);
		string2 = memset(string2, 42, len);
		string1 = strcpy(string1, "This");
		string2 = strcpy(string2, "This");
		check1 = strncat(string1, cat, limit);
		check2 = ft_strncat(string2, cat, limit);
		XCTAssert(check1 == string1, @"strncat returned wrong address. returned %p, expected %p.", check1, string1);
		XCTAssert(check2 == string2, @"strncat returned wrong address. returned %p, expected %p.", check2, string2);
		while (index < strlen(string1))
		{
			XCTAssert(check1[index] == check2[index], @"ft_strncat fails on pos %zu with limit %zu. strncat returned %c, ft_strncat returned %c", index, limit, check1[index], check2[index]);
			index++;
		}
		limit++;
	}
	free(string1);
	free(string2);
}

- (void)testWithWeirdStringsThatFitPerfectly {
	size_t len = 12;
	size_t index = 0;
	size_t limit = 0;
	char *string1 = (char *)malloc(sizeof(char) * len);
	char *string2 = (char *)malloc(sizeof(char) * len);
	char *cat = "*\t ~`";
	char *check1;
	char *check2;
	while (limit <= len)
	{
		index = 0;
		string1 = memset(string1, 42, len);
		string2 = memset(string2, 42, len);
		string1 = strcpy(string1, "%&\e\n@#");
		string2 = strcpy(string2, "%&\e\n@#");
		check1 = strncat(string1, cat, limit);
		check2 = ft_strncat(string2, cat, limit);
		XCTAssert(check1 == string1, @"strncat returned wrong address. returned %p, expected %p.", check1, string1);
		XCTAssert(check2 == string2, @"strncat returned wrong address. returned %p, expected %p.", check2, string2);
		while (index < strlen(string1))
		{
			XCTAssert(check1[index] == check2[index], @"ft_strncat fails on pos %zu with limit %zu. strncat returned %c, ft_strncat returned %c", index, limit, check1[index], check2[index]);
			index++;
		}
		limit++;
	}
	free(string1);
	free(string2);
}

- (void)testWithWeirdStringsThatAreShorter {
	size_t len = 12;
	size_t index = 0;
	size_t limit = 0;
	char *string1 = (char *)malloc(sizeof(char) * len);
	char *string2 = (char *)malloc(sizeof(char) * len);
	char *cat = "\t ~`";
	char *check1;
	char *check2;
	while (limit <= len)
	{
		index = 0;
		string1 = memset(string1, 42, len);
		string2 = memset(string2, 42, len);
		string1 = strcpy(string1, "%&\e\n");
		string2 = strcpy(string2, "%&\e\n");
		check1 = strncat(string1, cat, limit);
		check2 = ft_strncat(string2, cat, limit);
		XCTAssert(check1 == string1, @"strncat returned wrong address. returned %p, expected %p.", check1, string1);
		XCTAssert(check2 == string2, @"strncat returned wrong address. returned %p, expected %p.", check2, string2);
		while (index < strlen(string1))
		{
			XCTAssert(check1[index] == check2[index], @"ft_strncat fails on pos %zu with limit %zu. strncat returned %c, ft_strncat returned %c", index, limit, check1[index], check2[index]);
			index++;
		}
		limit++;
	}
	free(string1);
	free(string2);
}


@end
