//
//  ft_PutStr_FD.m
//  ft
//
//  Created by Liewe Gutter on 23/01/2019.
//  Copyright © 2019 Liewe Gutter. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "libft.h"
#import <sys/stat.h>

@interface ft_PutStr_FD : XCTestCase

@end

@implementation ft_PutStr_FD

- (void)testPutStr_FD {
	char *str = "Thisisatest";
	char check[15];
	int fd;
	ssize_t e;
	ssize_t i = 0;
	fd = open("testputstrfd.txt", O_WRONLY | O_CREAT);
	chmod("testputstrfd.txt", S_IRUSR | S_IWUSR);
	ft_putstr_fd(str, fd);
	close(fd);
	fd = open("testputstrfd.txt", O_RDONLY);
	e = read(fd, check, 15);
	if (e < 1)
		XCTFail(@"Read error: %zi, errno is %i", e, errno);
	while (i < e)
	{
		XCTAssert(check[i] == str[i], @"putstr_fd failed, fd is %i, e is %zi, character printed was \'%c\'", fd, e, check[i]);
		i++;
	}
	close(fd);
}

- (void)testPutStr_FDWithWeirdChars {
	char *str = " \n	%\e&0@!";
	char check[15];
	int fd;
	ssize_t e;
	ssize_t i = 0;
	fd = open("testputstrfd1.txt", O_WRONLY | O_CREAT);
	chmod("testputstrfd1.txt", S_IRUSR | S_IWUSR);
	ft_putstr_fd(str, fd);
	close(fd);
	fd = open("testputstrfd1.txt", O_RDONLY);
	e = read(fd, check, 15);
	if (e < 1)
		XCTFail(@"Read error: %zi, errno is %i", e, errno);
	while (i < e)
	{
		XCTAssert(check[i] == str[i], @"putchar_fd failed, fd is %i, e is %zi, character printed was \'%c\'", fd, e, check[i]);
		i++;
	}
	close(fd);
}

- (void)testPutStr_FDWithExtendedAscii {
	char *str = "Thisisa\xe3test";
	char check[15];
	int fd;
	ssize_t e;
	ssize_t i = 0;
	fd = open("testputstrfd.txt", O_WRONLY | O_CREAT);
	chmod("testputstrfd.txt", S_IRUSR | S_IWUSR);
	ft_putstr_fd(str, fd);
	close(fd);
	fd = open("testputstrfd.txt", O_RDONLY);
	e = read(fd, check, 15);
	if (e < 1)
		XCTFail(@"Read error: %zi, errno is %i", e, errno);
	while (i < e)
	{
		XCTAssert(check[i] == str[i], @"putstr_fd failed, fd is %i, e is %zi, character printed was \'%c\'", fd, e, check[i]);
		i++;
	}
	close(fd);
}

- (void)testPutStr_FDEmptyString {
	char *str = "";
	char check[5];
	int fd;
	ssize_t e;
	ssize_t i = 0;
	fd = open("testputstrfd2.txt", O_WRONLY | O_CREAT);
	chmod("testputstrfd2.txt", S_IRUSR | S_IWUSR);
	ft_putstr_fd(str, fd);
	close(fd);
	fd = open("testputstrfd2.txt", O_RDONLY);
	e = read(fd, check, 5);

	XCTAssert(e == 0, @"putchar_fd failed, fd is %i, e is %zi, character printed was \'%c\'", fd, e, check[i]);
	close(fd);
}

@end
