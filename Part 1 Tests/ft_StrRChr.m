//
//  ft_StrRChr.m
//  ft
//
//  Created by Liewe Gutter on 31/01/2019.
//  Copyright © 2019 Liewe Gutter. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "libft.h"

@interface ft_StrRChr : XCTestCase

@end

@implementation ft_StrRChr

- (void)testWhenCharIsNotInString {
	char str[] = "Thisisatest";
	void *ret1;
	void *ret2;
	ret1 = strrchr(str, 'c');
	ret2 = ft_strrchr(str, 'c');
	XCTAssert(ret1 == NULL && ret2 == NULL, @"ft_strrchr failed when char is not in string. Expected NULL, returned %p", ret2);
}

- (void)testWhencIsOnPos0And4 {
	char str[] = "cThicisatest";
	void *ret1;
	void *ret2;
	ret1 = strrchr(str, 'c');
	ret2 = ft_strrchr(str, 'c');
	XCTAssert(ret1 == ret2, @"ft_strrchr failed with c on pos 0. Expected %p, returned %p", ret1, ret2);
}

- (void)testWhencIsOnPos5And7 {
	char str[] = "Thisicacest";
	void *ret1;
	void *ret2;
	ret1 = strrchr(str, 'c');
	ret2 = ft_strrchr(str, 'c');
	XCTAssert(ret1 == ret2, @"ft_strrchr failed with c on pos 5. Expected %p, returned %p", ret1, ret2);
}

- (void)testWhencIsOnPos9 {
	char str[] = "Thisisatect";
	void *ret1;
	void *ret2;
	ret1 = strrchr(str, 'c');
	ret2 = ft_strrchr(str, 'c');
	XCTAssert(ret1 == ret2, @"ft_strrchr failed with c on pos 9. Expected %p, returned %p", ret1, ret2);
}

- (void)testWhencIsOnPos10 {
	char str[] = "Thisisatesc";
	void *ret1;
	void *ret2;
	ret1 = strrchr(str, 'c');
	ret2 = ft_strrchr(str, 'c');
	XCTAssert(ret1 == ret2, @"ft_strrchr failed with c on pos 10. Expected %p, returned %p", ret1, ret2);
}

- (void)testWhenAsteriskIsOnPos0And4 {
	char str[] = "*Thi*isatest";
	void *ret1;
	void *ret2;
	ret1 = strrchr(str, '*');
	ret2 = ft_strrchr(str, '*');
	XCTAssert(ret1 == ret2, @"ft_strrchr failed with * on pos 0. Expected %p, returned %p", ret1, ret2);
}

- (void)testWhenAsteriskIsOnPos5And7 {
	char str[] = "Thisi*a*est";
	void *ret1;
	void *ret2;
	ret1 = strrchr(str, '*');
	ret2 = ft_strrchr(str, '*');
	XCTAssert(ret1 == ret2, @"ft_strrchr failed with * on pos 5. Expected %p, returned %p", ret1, ret2);
}

- (void)testWhenAsteriskIsOnPos9 {
	char str[] = "Thisisate*t";
	void *ret1;
	void *ret2;
	ret1 = strrchr(str, '*');
	ret2 = ft_strrchr(str, '*');
	XCTAssert(ret1 == ret2, @"ft_strrchr failed with * on pos 9. Expected %p, returned %p", ret1, ret2);
}

- (void)testWhenAsteriskIsOnPos10 {
	char str[] = "Thisisates*";
	void *ret1;
	void *ret2;
	ret1 = strrchr(str, '*');
	ret2 = ft_strrchr(str, '*');
	XCTAssert(ret1 == ret2, @"ft_strrchr failed with * on pos 10. Expected %p, returned %p", ret1, ret2);
}

- (void)testWhenCharIsTermZero {
	char str[] = "Thisisatest";
	void *ret1;
	void *ret2;
	ret1 = strrchr(str, '\0');
	ret2 = ft_strrchr(str, '\0');
	XCTAssert(ret1 == ret2, @"ft_strrchr failed when char is '\0'. Expected %p, returned %p", ret1, ret2);
}

@end
