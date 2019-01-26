//
//  ft_PutNbr.m
//  ft
//
//  Created by Liewe Gutter on 23/01/2019.
//  Copyright © 2019 Liewe Gutter. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "libft.h"


@interface ft_PutNbr : XCTestCase

@end

@implementation ft_PutNbr

- (void)testPutNbrWithPositiveNumber {
	char *str = (char *)malloc(4);
	str = "123";
	char check[15];
	ssize_t i = 0;
	ssize_t e;
	int fd;
	freopen("testputnbr0.txt", "w", stdout);
	ft_putnbr(123);
	fd = open("testputnbr0.txt", O_RDONLY);
	e = read(fd, check, 15);
	while (i < e)
	{
		XCTAssert(check[i] == str[i], @"PutStr failed at pos %zi, printed %c instead of %c", i, check[i], str[i]);
		i++;
	}
}

- (void)testPutNbrWithNegativeNumber {
	char *str = (char *)malloc(5);
	str = "-123";
	char check[15];
	ssize_t i = 0;
	ssize_t e;
	int fd;
	freopen("testputnbr1.txt", "w", stdout);
	ft_putnbr(-123);
	fd = open("testputnbr1.txt", O_RDONLY);
	e = read(fd, check, 15);
	while (i < e)
	{
		XCTAssert(check[i] == str[i], @"PutStr failed at pos %zi, printed %c instead of %c", i, check[i], str[i]);
		i++;
	}
}

- (void)testPutNbrWithMaxInt {
	char *str = (char *)malloc(11);
	str = "2147483647";
	char check[15];
	ssize_t i = 0;
	ssize_t e;
	int fd;
	freopen("testputnbr2.txt", "w", stdout);
	ft_putnbr(2147483647);
	fd = open("testputnbr2.txt", O_RDONLY);
	e = read(fd, check, 15);
	while (i < e)
	{
		XCTAssert(check[i] == str[i], @"PutStr failed at pos %zi, printed %c instead of %c", i, check[i], str[i]);
		i++;
	}
}

- (void)testPutNbrWithMinInt {
	char *str = (char *)malloc(12);
	str = "-2147483648";
	char check[15];
	ssize_t i = 0;
	ssize_t e;
	int fd;
	freopen("testputnbr3.txt", "w", stdout);
	ft_putnbr(-2147483648);
	fd = open("testputnbr3.txt", O_RDONLY);
	e = read(fd, check, 15);
	while (i < e)
	{
		XCTAssert(check[i] == str[i], @"PutStr failed at pos %zi, printed %c instead of %c", i, check[i], str[i]);
		i++;
	}
}
- (void)testPutNbrWithNegativeMaxInt {
	char *str = (char *)malloc(12);
	str = "-2147483647";
	char check[15];
	ssize_t i = 0;
	ssize_t e;
	int fd;
	freopen("testputnbr4.txt", "w", stdout);
	ft_putnbr(-2147483647);
	fd = open("testputnbr4.txt", O_RDONLY);
	e = read(fd, check, 15);
	while (i < e)
	{
		XCTAssert(check[i] == str[i], @"PutStr failed at pos %zi, printed %c instead of %c", i, check[i], str[i]);
		i++;
	}
}

@end
