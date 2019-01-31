//
//  ft_MemChr.m
//  ft
//
//  Created by Liewe Gutter on 29/01/2019.
//  Copyright © 2019 Liewe Gutter. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "libft.h"

@interface ft_MemChr : XCTestCase

@end

@implementation ft_MemChr

- (void)testWhencIsOnPos0 {
	char str[] = "cThisisatest";
	void *ret1;
	void *ret2;
	ret1 = memchr(str, 'c', 10);
	ret2 = ft_memchr(str, 'c', 10);
	 XCTAssert(ret1 == ret2, @"ft_memchr failed with c on pos 0. Expected %p, returned %p", ret1, ret2);
}

- (void)testWhencIsOnPos5 {
	char str[] = "Thisicatest";
	void *ret1;
	void *ret2;
	ret1 = memchr(str, 'c', 10);
	ret2 = ft_memchr(str, 'c', 10);
	XCTAssert(ret1 == ret2, @"ft_memchr failed with c on pos 5. Expected %p, returned %p", ret1, ret2);
}

- (void)testWhencIsOnPos9 {
	char str[] = "Thisisatect";
	void *ret1;
	void *ret2;
	ret1 = memchr(str, 'c', 10);
	ret2 = ft_memchr(str, 'c', 10);
	XCTAssert(ret1 == ret2, @"ft_memchr failed with c on pos 9. Expected %p, returned %p", ret1, ret2);
}

- (void)testWhencIsOnPos10 {
	char str[] = "Thisisatesc";
	void *ret1;
	void *ret2;
	ret1 = memchr(str, 'c', 10);
	ret2 = ft_memchr(str, 'c', 10);
	XCTAssert(ret1 == ret2, @"ft_memchr failed with c on pos 10. Expected %p, returned %p", ret1, ret2);
}

- (void)testWhencIsNotInStringButLenIsNotTooLong {
	char str[] = "Thisisatest";
	void *ret1;
	void *ret2;
	ret1 = memchr(str, 'c', 10);
	ret2 = ft_memchr(str, 'c', 10);
	XCTAssert(ret1 == ret2, @"ft_memchr failed without c in string but valid len. Expected %p, returned %p", ret1, ret2);
}

- (void)testWhencIsNotInStringAndLenIsTooLong {
	char str[] = "Thisisatest";
	void *ret1;
	void *ret2;
	ret1 = memchr(str, 'c', 15);
	ret2 = ft_memchr(str, 'c', 15);
	XCTAssert(ret1 == ret2, @"ft_memchr failed without c and invalid len. Expected %p, returned %p", ret1, ret2);
}

- (void)testWhenAsteriskIsOnPos0 {
	char str[] = "*Thisisatest";
	void *ret1;
	void *ret2;
	ret1 = memchr(str, '*', 10);
	ret2 = ft_memchr(str, '*', 10);
	XCTAssert(ret1 == ret2, @"ft_memchr failed with * on pos 0. Expected %p, returned %p", ret1, ret2);
}

- (void)testWhenAsteriskIsOnPos5 {
	char str[] = "Thisi*atest";
	void *ret1;
	void *ret2;
	ret1 = memchr(str, '*', 10);
	ret2 = ft_memchr(str, '*', 10);
	XCTAssert(ret1 == ret2, @"ft_memchr failed with * on pos 5. Expected %p, returned %p", ret1, ret2);
}

- (void)testWhenAsteriskIsOnPos9 {
	char str[] = "Thisisate*t";
	void *ret1;
	void *ret2;
	ret1 = memchr(str, '*', 10);
	ret2 = ft_memchr(str, '*', 10);
	XCTAssert(ret1 == ret2, @"ft_memchr failed with * on pos 9. Expected %p, returned %p", ret1, ret2);
}

- (void)testWhenAsteriskIsOnPos10 {
	char str[] = "Thisisates*";
	void *ret1;
	void *ret2;
	ret1 = memchr(str, '*', 10);
	ret2 = ft_memchr(str, '*', 10);
	XCTAssert(ret1 == ret2, @"ft_memchr failed with * on pos 10. Expected %p, returned %p", ret1, ret2);
}

- (void)testWhenAsteriskIsNotInStringButLenIsNotTooLong {
	char str[] = "Thisisatest";
	void *ret1;
	void *ret2;
	ret1 = memchr(str, '*', 10);
	ret2 = ft_memchr(str, '*', 10);
	XCTAssert(ret1 == ret2, @"ft_memchr failed without c in string but valid len. Expected %p, returned %p", ret1, ret2);
}

- (void)testWhenAsteriskIsNotInStringAndLenIsTooLong {
	char str[] = "Thisisatest";
	void *ret1;
	void *ret2;
	ret1 = memchr(str, '*', 15);
	ret2 = ft_memchr(str, '*', 15);
	XCTAssert(ret1 == ret2, @"ft_memchr failed without c in string and invalid len. Expected %p, returned %p", ret1, ret2);
}

- (void)testWhenCharIsTermZero {
	char str[] = "Thisisatest";
	void *ret1;
	void *ret2;
	ret1 = memchr(str, '\0', 15);
	ret2 = ft_memchr(str, '\0', 15);
	XCTAssert(ret1 == ret2, @"ft_memchr failed when char is '\0'. Expected %p, returned %p", ret1, ret2);
}

@end
