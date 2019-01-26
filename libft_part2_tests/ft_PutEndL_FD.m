//
//  ft_PutEndL_FD.m
//  ft
//
//  Created by Liewe Gutter on 23/01/2019.
//  Copyright © 2019 Liewe Gutter. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "libft.h"

@interface ft_PutEndL_FD : XCTestCase

@end

@implementation ft_PutEndL_FD

- (void)testPutEndL_FD {
	char *str = (char *)malloc(13);
	str = "Thisisatest\n";
	char check[15];
	int fd;
	ssize_t e;
	ssize_t i = 0;
	freopen("testputendlfd.txt", "w", stdout);
	ft_putendl_fd(str, 1);
	fd = open("testputendlfd.txt", O_RDONLY);
	e = read(fd, check, 15);
	while (i < (e - 1))
	{
		XCTAssert(check[i] == str[i], @"putendl_fd failed, fd is %i, e is %zi, character printed was \'%c\'", fd, e, check[i]);
		i++;
	}
	XCTAssert(check[i] == '\n', @"ft_putendl_fd did not place newline. instead placed %c", str[i]);
	close(fd);
}

- (void)testPutEndL_FDWithWeirdChars {
	char *str = (char *)malloc(11);
	str = " \n	%\e&0@!\n";
	char check[15];
	int fd;
	ssize_t e;
	ssize_t i = 0;
	freopen("testputendlfd1.txt", "w", stdout);
	ft_putendl_fd(str, 1);
	fd = open("testputendlfd1.txt", O_RDONLY);
	e = read(fd, check, 15);
	while (i < (e - 1))
	{
		XCTAssert(check[i] == str[i], @"putendl_fd failed, fd is %i, e is %zi, character printed was \'%c\'", fd, e, check[i]);
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
	freopen("testputendlfd2.txt", "w", stdout);
	ft_putendl_fd(str, 1);
	fd = open("testputendlfd2.txt", O_RDONLY);
	e = read(fd, check, 5);
	while (i < e)
	{
		XCTAssert(check[i] == '\n', @"putendl_fd failed, fd is %i, e is %zi, character printed was \'%c\'", fd, e, check[i]);
		i++;
	}
	close(fd);
}

@end
