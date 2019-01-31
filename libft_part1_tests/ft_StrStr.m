//
//  ft_StrStr.m
//  ft
//
//  Created by Liewe Gutter on 31/01/2019.
//  Copyright © 2019 Liewe Gutter. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "libft.h"

@interface ft_StrStr : XCTestCase

@end

@implementation ft_StrStr

- (void)testWhenStringIsNotInString {
	char str[] = "Thisisatest";
	void *ret1;
	void *ret2;
	ret1 = strstr(str, "cky");
	ret2 = ft_strstr(str, "cky");
	XCTAssert(ret1 == NULL && ret2 == NULL, @"ft_strstr failed when char is not in string. Expected NULL, returned %p", ret2);
}

- (void)testWhenckyIsOnPos0And6 {
	char str[] = "ckyThickyisatest";
	void *ret1;
	void *ret2;
	ret1 = strstr(str, "cky");
	ret2 = ft_strstr(str, "cky");
	XCTAssert(ret1 == ret2, @"ft_strstr failed with \"cky\" on pos 0. Expected %p, returned %p", ret1, ret2);
}

- (void)testWhenckyIsOnPos5And9 {
	char str[] = "Thisickyackyest";
	void *ret1;
	void *ret2;
	ret1 = strstr(str, "cky");
	ret2 = ft_strstr(str, "cky");
	XCTAssert(ret1 == ret2, @"ft_strstr failed with \"cky\" on pos 5. Expected %p, returned %p", ret1, ret2);
}

- (void)testWhenckyIsOnPos9 {
	char str[] = "Thisisateckyt";
	void *ret1;
	void *ret2;
	ret1 = strstr(str, "cky");
	ret2 = ft_strstr(str, "cky");
	XCTAssert(ret1 == ret2, @"ft_strstr failed with \"cky\" on pos 9. Expected %p, returned %p", ret1, ret2);
}

- (void)testWhenckyIsOnPos10 {
	char str[] = "Thisisatescky";
	void *ret1;
	void *ret2;
	ret1 = strstr(str, "cky");
	ret2 = ft_strstr(str, "cky");
	XCTAssert(ret1 == ret2, @"ft_strstr failed with \"cky\" on pos 10. Expected %p, returned %p", ret1, ret2);
}

- (void)testWhenWeirdStringIsOnPos0And6 {
	char str[] = "*&%Thi*&%isatest";
	void *ret1;
	void *ret2;
	ret1 = strstr(str, "*&%");
	ret2 = ft_strstr(str, "*&%");
	XCTAssert(ret1 == ret2, @"ft_strstr failed with weird chars in string on pos 0. Expected %p, returned %p", ret1, ret2);
}

- (void)testWhenWeirdStringIsOnPos5And9 {
	char str[] = "Thisi*&%a*&%est";
	void *ret1;
	void *ret2;
	ret1 = strstr(str, "*&%");
	ret2 = ft_strstr(str, "*&%");
	XCTAssert(ret1 == ret2, @"ft_strstr failed with weird chars in string on pos 5. Expected %p, returned %p", ret1, ret2);
}

- (void)testWhenWeirdStringIsOnPos9 {
	char str[] = "Thisisate*&%t";
	void *ret1;
	void *ret2;
	ret1 = strstr(str, "*&%");
	ret2 = ft_strstr(str, "*&%");
	XCTAssert(ret1 == ret2, @"ft_strstr failed with weird chars in string on pos 9. Expected %p, returned %p", ret1, ret2);
}

- (void)testWhenWeirdStringIsOnPos10 {
	char str[] = "Thisisates*&%";
	void *ret1;
	void *ret2;
	ret1 = strstr(str, "*&%");
	ret2 = ft_strstr(str, "*&%");
	XCTAssert(ret1 == ret2, @"ft_strstr failed with weird chars in string on pos 10. Expected %p, returned %p", ret1, ret2);
}


- (void)testWhenSearchingForEmptyString {
	char str[] = "Thisisatest";
	void *ret1;
	void *ret2;
	ret1 = strstr(str, "");
	ret2 = ft_strstr(str, "");
	XCTAssert(ret1 == ret2, @"ft_strstr failed when char is '\0'. Expected %p, returned %p", ret1, ret2);
}

@end
