//
//  ft_PutChar_FD.m
//  ft
//
//  Created by Liewe Gutter on 23/01/2019.
//  Copyright © 2019 Liewe Gutter. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "libft.h"

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
	freopen("testputcharfd.txt", "w", stdout);
	ft_putchar_fd(c, 1);
	fd = open("testputcharfd.txt", O_RDONLY);
	e = read(fd, check, 5);
	while (i < e)
	{
	XCTAssert(check[i] == c, @"putchar_fd failed, fd is %i, e is %zi, character printed was \'%c\'", fd, e, check[i]);
	i++;
	}
	close(fd);
}

@end
