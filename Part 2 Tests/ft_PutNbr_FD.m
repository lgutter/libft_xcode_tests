//
//  ft_PutNbr_FD.m
//  ft
//
//  Created by Liewe Gutter on 23/01/2019.
//  Copyright © 2019 Liewe Gutter. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "libft.h"
#import <sys/stat.h>

@interface ft_PutNbr_FD : XCTestCase

@end

@implementation ft_PutNbr_FD

- (void)testPutNbr_FDWithPositiveNumber {
	char *str = (char *)malloc(4);
	str = "123";
	char check[15];
	ssize_t i = 0;
	ssize_t e;
	int fd;
	fd = open("testputnbr0.txt", O_WRONLY | O_CREAT);
	chmod("testputnbr0.txt", S_IRUSR | S_IWUSR);
	ft_putnbr_fd(123, fd);
	close(fd);
	fd = open("testputnbr0.txt", O_RDONLY);
	e = read(fd, check, 15);
	if (e < 1)
		XCTFail(@"Read error: %zi, errno is %i", e, errno);
	while (i < e)
	{
		XCTAssert(check[i] == str[i], @"PutStr failed at pos %zi, printed %c instead of %c", i, check[i], str[i]);
		i++;
	}
}

- (void)testPutNbr_FDWithNegativeNumber {
	char *str = (char *)malloc(5);
	str = "-123";
	char check[15];
	ssize_t i = 0;
	ssize_t e;
	int fd;
	fd = open("testputnbr1.txt", O_WRONLY | O_CREAT);
	chmod("testputnbr1.txt", S_IRUSR | S_IWUSR);
	ft_putnbr_fd(-123, fd);
	close(fd);
	fd = open("testputnbr1.txt", O_RDONLY);
	e = read(fd, check, 15);
	if (e < 1)
		XCTFail(@"Read error: %zi, errno is %i", e, errno);
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
	fd = open("testputnbr2.txt", O_WRONLY | O_CREAT);
	chmod("testputnbr2.txt", S_IRUSR | S_IWUSR);
	ft_putnbr_fd(2147483647, fd);
	close(fd);
	fd = open("testputnbr2.txt", O_RDONLY);
	e = read(fd, check, 15);
	if (e < 1)
		XCTFail(@"Read error: %zi, errno is %i", e, errno);
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
	fd = open("testputnbr3.txt", O_WRONLY | O_CREAT);
	chmod("testputnbr3.txt", S_IRUSR | S_IWUSR);
	ft_putnbr_fd(-2147483648, fd);
	close(fd);
	fd = open("testputnbr3.txt", O_RDONLY);
	e = read(fd, check, 15);
	if (e < 1)
		XCTFail(@"Read error: %zi, errno is %i", e, errno);
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
	fd = open("testputnbr4.txt", O_WRONLY | O_CREAT);
	chmod("testputnbr4.txt", S_IRUSR | S_IWUSR);
	ft_putnbr_fd(-2147483647, fd);
	close(fd);
	fd = open("testputnbr4.txt", O_RDONLY);
	e = read(fd, check, 15);
	if (e < 1)
		XCTFail(@"Read error: %zi, errno is %i", e, errno);
	while (i < e)
	{
		XCTAssert(check[i] == str[i], @"PutStr failed at pos %zi, printed %c instead of %c", i, check[i], str[i]);
		i++;
	}
}

@end
