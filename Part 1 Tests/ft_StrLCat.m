//
//  ft_StrLCat.m
//  ft
//
//  Created by Liewe Gutter on 30/01/2019.
//  Copyright © 2019 Liewe Gutter. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "libft.h"

@interface ft_StrLCat : XCTestCase

@end

@implementation ft_StrLCat

- (void)testWithSimpleStringsThatFitPerfectly {
	size_t len = 12;
	size_t index = 0;
	size_t limit = 0;
	char *string1 = (char *)malloc(sizeof(char) * len);
	char *string2 = (char *)malloc(sizeof(char) * len);
	char *cat = "atest";
	size_t  check1;
	size_t  check2;
	while (limit <= len)
	{
		index = 0;
		string1 = memset(string1, 42, len);
		string2 = memset(string2, 42, len);
		string1 = strcpy(string1, "Thisis");
		string2 = strcpy(string2, "Thisis");
		check1 = strlcat(string1, cat, limit);
		check2 = ft_strlcat(string2, cat, limit);
		XCTAssert(check1 == check2, @"strlcat returned wrong size with limit %zu. returned %zu, expected %zu.", limit, check2, check1);
		while (index < len)
		{
			XCTAssert(string1[index] == string2[index], @"ft_strlcat fails on pos %zu with limit %zu. strlcat returned %s, ft_strlcat returned %s", index, limit, string1, string2);
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
	size_t check1;
	size_t check2;
	while (limit <= len)
	{
		index = 0;
		string1 = memset(string1, 42, len);
		string2 = memset(string2, 42, len);
		string1 = strcpy(string1, "This\0");
		string2 = strcpy(string2, "This\0");
		check1 = strlcat(string1, cat, limit);
		check2 = ft_strlcat(string2, cat, limit);
		XCTAssert(check1 == check2, @"strlcat returned wrong size with limit %zu. returned %zu, expected %zu.", limit, check2, check1);
		while (index < strlen(string1))
		{
			XCTAssert(string1[index] == string2[index], @"ft_strlcat fails on pos %zu with limit %zu. strlcat returned %c, ft_strlcat returned %c", index, limit, string1[index], string2[index]);
			index++;
		}
		limit++;
	}
	free(string1);
	free(string2);
}

- (void)testWithSimpleStringsThatDontFit {
	size_t len = 12;
	size_t index = 0;
	size_t limit = 0;
	char *string1 = (char *)malloc(sizeof(char) * len);
	char *string2 = (char *)malloc(sizeof(char) * len);
	char *cat = "alongtest";
	size_t  check1;
	size_t  check2;
	while (limit <= len)
	{
		index = 0;
		string1 = memset(string1, 42, len);
		string2 = memset(string2, 42, len);
		string1 = strcpy(string1, "Thisis");
		string2 = strcpy(string2, "Thisis");
		check1 = strlcat(string1, cat, limit);
		check2 = ft_strlcat(string2, cat, limit);
		XCTAssert(check1 == check2, @"strlcat returned wrong size with limit %zu. returned %zu, expected %zu.", limit, check2, check1);
		while (index < len)
		{
			XCTAssert(string1[index] == string2[index], @"ft_strlcat fails on pos %zu with limit %zu. strlcat returned %c, ft_strlcat returned %c", index, limit, string1[index], string2[index]);
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
	size_t  check1;
	size_t  check2;
	while (limit <= len)
	{
		index = 0;
		string1 = memset(string1, 42, len);
		string2 = memset(string2, 42, len);
		string1 = strcpy(string1, "%\e\n@#^");
		string2 = strcpy(string2, "%\e\n@#^");
		check1 = strlcat(string1, cat, limit);
		check2 = ft_strlcat(string2, cat, limit);
		XCTAssert(check1 == check2, @"strlcat returned wrong size with limit %zu. returned %zu, expected %zu.", limit, check2, check1);
		while (index < len)
		{
			XCTAssert(string1[index] == string2[index], @"ft_strlcat fails on pos %zu with limit %zu. strlcat returned %s, ft_strlcat returned %s", index, limit, string1, string2);
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
	size_t check1;
	size_t check2;
	while (limit <= len)
	{
		index = 0;
		string1 = memset(string1, 42, len);
		string2 = memset(string2, 42, len);
		string1 = strcpy(string1, "This\0");
		string2 = strcpy(string2, "This\0");
		check1 = strlcat(string1, cat, limit);
		check2 = ft_strlcat(string2, cat, limit);
		XCTAssert(check1 == check2, @"strlcat returned wrong size with limit %zu. returned %zu, expected %zu.", limit, check2, check1);
		while (index < strlen(string1))
		{
			XCTAssert(string1[index] == string2[index], @"ft_strlcat fails on pos %zu with limit %zu. strlcat returned %c, ft_strlcat returned %c", index, limit, string1[index], string2[index]);
			index++;
		}
		limit++;
	}
	free(string1);
	free(string2);
}

- (void)testWithWeirdStringsThatDontFit {
	size_t len = 12;
	size_t index = 0;
	size_t limit = 0;
	char *string1 = (char *)malloc(sizeof(char) * len);
	char *string2 = (char *)malloc(sizeof(char) * len);
	char *cat = "*;!¦¬\t ~`";
	size_t  check1;
	size_t  check2;
	while (limit <= len)
	{
		index = 0;
		string1 = memset(string1, 42, len);
		string2 = memset(string2, 42, len);
		string1 = strcpy(string1, "%\e\n@#^");
		string2 = strcpy(string2, "%\e\n@#^");
		check1 = strlcat(string1, cat, limit);
		check2 = ft_strlcat(string2, cat, limit);
		XCTAssert(check1 == check2, @"strlcat returned wrong size with limit %zu. returned %zu, expected %zu.", limit, check2, check1);
		while (index < len)
		{
			XCTAssert(string1[index] == string2[index], @"ft_strlcat fails on pos %zu with limit %zu. strlcat returned %c, ft_strlcat returned %c", index, limit, string1[index], string2[index]);
			index++;
		}
		limit++;
	}
	free(string1);
	free(string2);
}

@end
