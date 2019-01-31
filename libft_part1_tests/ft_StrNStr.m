//
//  ft_StrNStr.m
//  ft
//
//  Created by Liewe Gutter on 31/01/2019.
//  Copyright © 2019 Liewe Gutter. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "libft.h"

@interface ft_StrNStr : XCTestCase

@end

@implementation ft_StrNStr

- (void)testWhenStringIsNotInString {
	char str[] = "Thisisatest";
	size_t len = 10;
	void *ret1;
	void *ret2;
	ret1 = strnstr(str, "cky", len);
	ret2 = ft_strnstr(str, "cky", len);
	XCTAssert(ret1 == NULL && ret2 == NULL, @"ft_strnstr failed when char is not in string. Expected NULL, returned %p", ret2);
}

- (void)testWhenckyIsOnPos0And6WithLen16 {
	char str[] = "ckyThickyisatest";
	size_t len = 16;
	void *ret1;
	void *ret2;
	ret1 = strnstr(str, "cky", len);
	ret2 = ft_strnstr(str, "cky", len);
	XCTAssert(ret1 == ret2, @"ft_strnstr failed with \"cky\" on pos 0. Expected %p, returned %p", ret1, ret2);
}

- (void)testWhenckyIsOnPos0And6WithLen5 {
	char str[] = "ckyThickyisatest";
	size_t len = 5;
	void *ret1;
	void *ret2;
	ret1 = strnstr(str, "cky", len);
	ret2 = ft_strnstr(str, "cky", len);
	XCTAssert(ret1 == ret2, @"ft_strnstr failed with \"cky\" on pos 0. Expected %p, returned %p", ret1, ret2);
}

- (void)testWhenckyIsOnPos5And9WithLen16 {
	char str[] = "Thisickyackyest";
	size_t len = 16;
	void *ret1;
	void *ret2;
	ret1 = strnstr(str, "cky", len);
	ret2 = ft_strnstr(str, "cky", len);
	XCTAssert(ret1 == ret2, @"ft_strnstr failed with \"cky\" on pos 5. Expected %p, returned %p", ret1, ret2);
}

- (void)testWhenckyIsOnPos5And9WithLen6 {
	char str[] = "Thisickyackyest";
	size_t len = 6;
	void *ret1;
	void *ret2;
	ret1 = strnstr(str, "cky", len);
	ret2 = ft_strnstr(str, "cky", len);
	XCTAssert(ret1 == NULL && ret2 == NULL, @"ft_strnstr failed when char is not fully within len. Expected NULL, returned %p", ret2);
}

- (void)testWhenckyIsOnPos9WithLen14 {
	char str[] = "Thisisateckyt";
	size_t len = 14;
	void *ret1;
	void *ret2;
	ret1 = strnstr(str, "cky", len);
	ret2 = ft_strnstr(str, "cky", len);
	XCTAssert(ret1 == ret2, @"ft_strnstr failed with \"cky\" on pos 9. Expected %p, returned %p", ret1, ret2);
}

- (void)testWhenckyIsOnPos9WithLen6 {
	char str[] = "Thisisateckyt";
	size_t len = 6;
	void *ret1;
	void *ret2;
	ret1 = strnstr(str, "cky", len);
	ret2 = ft_strnstr(str, "cky", len);
	XCTAssert(ret1 == NULL && ret2 == NULL, @"ft_strnstr failed when char is not in string. Expected NULL, returned %p", ret2);
}

- (void)testWhenckyIsOnPos10 {
	char str[] = "Thisisatescky";
	size_t len = strlen(str);
	void *ret1;
	void *ret2;
	ret1 = strnstr(str, "cky", len);
	ret2 = ft_strnstr(str, "cky", len);
	XCTAssert(ret1 == ret2, @"ft_strnstr failed with \"cky\" on pos 10. Expected %p, returned %p", ret1, ret2);
}

- (void)testWhenWeirdStringIsOnPos0And6WithLen16 {
	char str[] = "*&%Thi*&%isatest";
	size_t len = 16;
	void *ret1;
	void *ret2;
	ret1 = strnstr(str, "*&%", len);
	ret2 = ft_strnstr(str, "*&%", len);
	XCTAssert(ret1 == ret2, @"ft_strnstr failed with weird chars in string on pos 0. Expected %p, returned %p", ret1, ret2);
}

- (void)testWhenWeirdStringIsOnPos0And6WithLen5 {
	char str[] = "*&%Thi*&%isatest";
	size_t len = 5;
	void *ret1;
	void *ret2;
	ret1 = strnstr(str, "*&%", len);
	ret2 = ft_strnstr(str, "*&%", len);
	XCTAssert(ret1 == ret2, @"ft_strnstr failed with weird chars in string on pos 0. Expected %p, returned %p", ret1, ret2);
}

- (void)testWhenWeirdStringIsOnPos5And9WithLen16 {
	char str[] = "Thisi*&%a*&%est";
	size_t len = 16;
	void *ret1;
	void *ret2;
	ret1 = strnstr(str, "*&%", len);
	ret2 = ft_strnstr(str, "*&%", len);
	XCTAssert(ret1 == ret2, @"ft_strnstr failed with weird chars in string on pos 5. Expected %p, returned %p", ret1, ret2);
}

- (void)testWhenWeirdStringIsOnPos5And9WithLen6 {
	char str[] = "Thisi*&%a*&%est";
	size_t len = 6;
	void *ret1;
	void *ret2;
	ret1 = strnstr(str, "*&%", len);
	ret2 = ft_strnstr(str, "*&%", len);
	XCTAssert(ret1 == NULL && ret2 == NULL, @"ft_strnstr failed when char is not fully within len. Expected NULL, returned %p", ret2);
}

- (void)testWhenWeirdStringIsOnPos9WithLen14 {
	char str[] = "Thisisate*&%t";
	size_t len = 14;
	void *ret1;
	void *ret2;
	ret1 = strnstr(str, "*&%", len);
	ret2 = ft_strnstr(str, "*&%", len);
	XCTAssert(ret1 == ret2, @"ft_strnstr failed with weird chars in string on pos 9. Expected %p, returned %p", ret1, ret2);
}

- (void)testWhenWeirdStringIsOnPos9WithLen6 {
	char str[] = "Thisisate*&%t";
	size_t len = 6;
	void *ret1;
	void *ret2;
	ret1 = strnstr(str, "*&%", len);
	ret2 = ft_strnstr(str, "*&%", len);
	XCTAssert(ret1 == NULL && ret2 == NULL, @"ft_strnstr failed when char is not in string. Expected NULL, returned %p", ret2);
}

- (void)testWhenWeirdStringIsOnPos10 {
	char str[] = "Thisisates*&%";
	size_t len = strlen(str);
	void *ret1;
	void *ret2;
	ret1 = strnstr(str, "*&%", len);
	ret2 = ft_strnstr(str, "*&%", len);
	XCTAssert(ret1 == ret2, @"ft_strnstr failed with weird chars in string on pos 10. Expected %p, returned %p", ret1, ret2);
}


- (void)testWhenSearchingForEmptyString {
	char str[] = "Thisisatest";
	size_t len = strlen(str);
	void *ret1;
	void *ret2;
	ret1 = strnstr(str, "", len);
	ret2 = ft_strnstr(str, "", len);
	XCTAssert(ret1 == ret2, @"ft_strnstr failed when char is '\0'. Expected %p, returned %p", ret1, ret2);
}

@end
