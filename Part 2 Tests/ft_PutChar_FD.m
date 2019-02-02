//
//  ft_PutChar_FD.m
//  ft
//
//  Created by Liewe Gutter on 23/01/2019.
//  Copyright © 2019 Liewe Gutter. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "libft.h"
#import <sys/stat.h>

@interface ft_PutChar_FD : XCTestCase

@end

@implementation ft_PutChar_FD

- (void)testPutChar_FD {
	char c = 'x';
	char check[5];
	int fd;
	ssize_t e;
	ssize_t i;
	i = 0;
	fd = open("testputcharfd.txt", O_RDWR | O_CREAT);
	if (fd < 3)
		XCTFail(@"fd is %i, errno is %i", fd, errno);
	chmod("testputcharfd.txt", S_IRUSR | S_IWUSR);
	ft_putchar_fd(c, fd);
	close(fd);
	fd = open("testputcharfd.txt", O_RDONLY);
	if (fd < 3)
		XCTFail(@"fd is %i, errno is %i", fd, errno);
	e = read(fd, check, 5);
	if (e < 1)
		XCTFail(@"Read error: %zi, errno is %i", e, errno);
	while (i < e)
	{
	XCTAssert(check[i] == c, @"putchar_fd failed, fd is %i, e is %zi, character printed was \'%c\'", fd, e, check[i]);
	i++;
	}
	close(fd);
}

- (void)testPutChar_FDWithExtendedAscii {
	char c = '\xe3';
	char check[5];
	int fd;
	ssize_t e;
	ssize_t i;
	i = 0;
	fd = open("testputcharfd1.txt", O_RDWR | O_CREAT);
	if (fd < 3)
		XCTFail(@"fd is %i, errno is %i", fd, errno);
	chmod("testputcharfd1.txt", S_IRUSR | S_IWUSR);
	ft_putchar_fd(c, fd);
	close(fd);
	fd = open("testputcharfd1.txt", O_RDONLY);
	if (fd < 3)
		XCTFail(@"fd is %i, errno is %i", fd, errno);
	e = read(fd, check, 5);
	if (e < 1)
		XCTFail(@"Read error: %zi, errno is %i", e, errno);
	while (i < e)
	{
		XCTAssert(check[i] == c, @"putchar_fd failed, fd is %i, e is %zi, character printed was \'%c\'", fd, e, check[i]);
		i++;
	}
	close(fd);
}

@end
