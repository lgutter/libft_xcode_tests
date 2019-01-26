//
//  ft_PutStr_FD.m
//  ft
//
//  Created by Liewe Gutter on 23/01/2019.
//  Copyright © 2019 Liewe Gutter. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "libft.h"

@interface ft_PutStr_FD : XCTestCase

@end

@implementation ft_PutStr_FD

- (void)testPutStr_FD {
	char *str = (char *)malloc(12);
	str = "Thisisatest";
	char check[15];
	int fd;
	ssize_t e;
	ssize_t i = 0;
	freopen("testputstrfd.txt", "w", stdout);
	ft_putstr_fd(str, 1);
	fd = open("testputstrfd.txt", O_RDONLY);
	e = read(fd, check, 15);
	while (i < e)
	{
		XCTAssert(check[i] == str[i], @"putstr_fd failed, fd is %i, e is %zi, character printed was \'%c\'", fd, e, check[i]);
		i++;
	}
	close(fd);
}

- (void)testPutStr_FDWithWeirdChars {
	char *str = (char *)malloc(10);
	str = " \n	%\e&0@!";
	char check[15];
	int fd;
	ssize_t e;
	ssize_t i = 0;
	freopen("testputstrfd1.txt", "w", stdout);
	ft_putstr_fd(str, 1);
	fd = open("testputstrfd1.txt", O_RDONLY);
	e = read(fd, check, 15);
	while (i < e)
	{
		XCTAssert(check[i] == str[i], @"putchar_fd failed, fd is %i, e is %zi, character printed was \'%c\'", fd, e, check[i]);
		i++;
	}
	close(fd);
}

- (void)testPutStr_FDEmptyString {
	char *str = (char *)malloc(1);
	str = "";
	char check[5];
	int fd;
	ssize_t e;
	ssize_t i = 0;
	freopen("testputstrfd2.txt", "w", stdout);
	ft_putstr_fd(str, 1);
	fd = open("testputstrfd2.txt", O_RDONLY);
	e = read(fd, check, 5);
	XCTAssert(e == 0, @"putchar_fd failed, fd is %i, e is %zi, character printed was \'%c\'", fd, e, check[i]);
	close(fd);
}

@end
