//
//  ft_StrCat.m
//  ft
//
//  Created by Liewe Gutter on 30/01/2019.
//  Copyright © 2019 Liewe Gutter. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "libft.h"

@interface ft_StrCat : XCTestCase

@end

@implementation ft_StrCat

- (void)testWithSimpleStringsThatFitPerfectly {
	size_t len = 12;
	size_t index = 0;
	char *string1 = (char *)malloc(sizeof(char) * len);
	char *string2 = (char *)malloc(sizeof(char) * len);
	string1 = memset(string1, 42, len);
	string2 = memset(string2, 42, len);
	string1 = strcpy(string1, "Thisis");
	string2 = strcpy(string2, "Thisis");
	char *cat = "atest";
	char *check1;
	char *check2;
	check1 = strcat(string1, cat);
	check2 = ft_strcat(string2, cat);
	XCTAssert(check1 == string1, @"strcat returned wrong address. returned %p, expected %p.", check1, string1);
	XCTAssert(check2 == string2, @"strcat returned wrong address. returned %p, expected %p.", check2, string2);
	while (index < len)
	{
		XCTAssert(check1[index] == check2[index], @"ft_strcat fails on pos %zu. strcat returned %c, ft_strcat returned %c", index, check1[index], check2[index]);
		index++;
	}
	free(string1);
	free(string2);
}

- (void)testWithSimpleStringsThatAreShorter {
	size_t len = 12;
	size_t index = 0;
	char *string1 = (char *)malloc(sizeof(char) * len);
	char *string2 = (char *)malloc(sizeof(char) * len);
	string1 = memset(string1, 42, len);
	string2 = memset(string2, 42, len);
	string1 = strcpy(string1, "This");
	string2 = strcpy(string2, "This");
	char *cat = "test";
	char *check1;
	char *check2;
	check1 = strcat(string1, cat);
	check2 = ft_strcat(string2, cat);
	XCTAssert(check1 == string1, @"strcat returned wrong address. returned %p, expected %p.", check1, string1);
	XCTAssert(check2 == string2, @"strcat returned wrong address. returned %p, expected %p.", check2, string2);
	while (index < len)
	{
		XCTAssert(check1[index] == check2[index], @"ft_strcat fails on pos %zu. strcat returned %c, ft_strcat returned %c", index, check1[index], check2[index]);
		index++;
	}
	free(string1);
	free(string2);
}

- (void)testWithWeirdStringsThatFitPerfectly {
	size_t len = 12;
	size_t index = 0;
	char *string1 = (char *)malloc(sizeof(char) * len);
	char *string2 = (char *)malloc(sizeof(char) * len);
	string1 = memset(string1, 42, len);
	string2 = memset(string2, 42, len);
	string1 = strcpy(string1, "%&\e\n@\\!`");
	string2 = strcpy(string2, "%&\e\n@\\!`");
	char *cat = "^\v \t'¬";
	char *check1;
	char *check2;
	check1 = strcat(string1, cat);
	check2 = ft_strcat(string2, cat);
	XCTAssert(check1 == string1, @"strcat returned wrong address. returned %p, expected %p.", check1, string1);
	XCTAssert(check2 == string2, @"strcat returned wrong address. returned %p, expected %p.", check2, string2);
	while (index < len)
	{
		XCTAssert(check1[index] == check2[index], @"ft_strcat fails on pos %zu. strcat returned %c, ft_strcat returned %c", index, check1[index], check2[index]);
		index++;
	}
	free(string1);
	free(string2);
}

- (void)testWithWeirdStringsThatAreShorter {
	size_t len = 12;
	size_t index = 0;
	char *string1 = (char *)malloc(sizeof(char) * len);
	char *string2 = (char *)malloc(sizeof(char) * len);
	string1 = memset(string1, 42, len);
	string2 = memset(string2, 42, len);
	string1 = strcpy(string1, "%&\e\n@\\");
	string2 = strcpy(string2, "%&\e\n@\\");
	char *cat = "\v \t'¬";
	char *check1;
	char *check2;
	check1 = strcat(string1, cat);
	check2 = ft_strcat(string2, cat);
	XCTAssert(check1 == string1, @"strcat returned wrong address. returned %p, expected %p.", check1, string1);
	XCTAssert(check2 == string2, @"strcat returned wrong address. returned %p, expected %p.", check2, string2);
	while (index < len)
	{
		XCTAssert(check1[index] == check2[index], @"ft_strcat fails on pos %zu. strcat returned %c, ft_strcat returned %c", index, check1[index], check2[index]);
		index++;
	}
	free(string1);
	free(string2);
}

@end
