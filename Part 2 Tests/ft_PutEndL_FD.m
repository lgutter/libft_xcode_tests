//
//  ft_PutEndL_FD.m
//  ft
//
//  Created by Liewe Gutter on 23/01/2019.
//  Copyright © 2019 Liewe Gutter. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "libft.h"
#import <sys/stat.h>

@interface ft_PutEndL_FD : XCTestCase

@end

@implementation ft_PutEndL_FD

- (void)testPutEndL_FD {
	char *str = "Thisisatest";
	char check[15];
	int fd;
	ssize_t e;
	ssize_t i = 0;
	fd = open("testputendlfd00.txt", O_WRONLY + O_CREAT);
	chmod("testputendlfd00.txt", S_IRUSR | S_IWUSR);
	ft_putendl_fd(str, fd);
	close(fd);
	fd = open("testputendlfd00.txt", O_RDONLY);
	e = read(fd, check, 15);
	if (e < 1)
		XCTFail(@"Read error: %zi, errno is %i", e, errno);
	while (i < (e - 1))
	{
		XCTAssert(check[i] == str[i], @"putendl_fd failed at pos %zi, fd is %i, e is %zi, character printed was \'%c\'", i, fd, e, check[i]);
		i++;
	}
	XCTAssert(check[i] == '\n', @"ft_putendl_fd did not place newline. instead placed %c", str[i]);
	close(fd);
}

- (void)testPutEndL_FDWithWeirdChars {
	char *str = " \v	%$\e&0@!*";
	char check[15];
	int fd;
	ssize_t e;
	ssize_t i = 0;
	fd = open("testputendlfd1.txt", O_WRONLY + O_CREAT);
	chmod("testputendlfd1.txt", S_IRUSR | S_IWUSR);
	ft_putendl_fd(str, fd);
	close(fd);
	fd = open("testputendlfd1.txt", O_RDONLY);
	e = read(fd, check, 15);
	if (e < 1)
		XCTFail(@"Read error: %zi, errno is %i", e, errno);
	while (i < (e - 1))
	{
		XCTAssert(check[i] == str[i], @"putendl_fd failed at pos %zi, fd is %i, e is %zi, character printed was \'%c\'", i, fd, e, check[i]);
		i++;
	}
	XCTAssert(check[i] == '\n', @"ft_putendl_fd did not place newline. instead placed %c", str[i]);
	close(fd);
}

- (void)testPutEndL_FDEmptyString {
	char *str = (char *)malloc(1);
	str = "";
	char check[5];
	int fd;
	ssize_t e;
	ssize_t i = 0;
	fd = open("testputendlfd2.txt", O_WRONLY + O_CREAT);
	chmod("testputendlfd2.txt", S_IRUSR | S_IWUSR);
	ft_putendl_fd(str, fd);
	close(fd);
	fd = open("testputendlfd2.txt", O_RDONLY);
	e = read(fd, check, 5);
	XCTAssert(e == 1 && check[0] == '\n', @"putendl_fd failed, fd is %i, e is %zi, character printed was \'%c\'", fd, e, check[i]);
	close(fd);
}

- (void)testPutEndL_FDWithExtendedAscii {
	char *str = "Thisisa\xe3test";
	char check[15];
	int fd;
	ssize_t e;
	ssize_t i = 0;
	fd = open("testputendlfd0.txt", O_WRONLY + O_CREAT);
	chmod("testputendlfd0.txt", S_IRUSR | S_IWUSR);
	ft_putendl_fd(str, fd);
	close(fd);
	fd = open("testputendlfd0.txt", O_RDONLY);
	e = read(fd, check, 15);
	if (e < 1)
		XCTFail(@"Read error: %zi, errno is %i", e, errno);
	while (i < (e - 1))
	{
		XCTAssert(check[i] == str[i], @"putendl_fd failed at pos %zi, fd is %i, e is %zi, character printed was \'%c\'", i, fd, e, check[i]);
		i++;
	}
	XCTAssert(check[i] == '\n', @"ft_putendl_fd did not place newline. instead placed %c", str[i]);
	close(fd);
}

@end
