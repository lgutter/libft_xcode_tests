//
//  ft_PutChar.m
//  ft
//
//  Created by Liewe Gutter on 16/01/2019.
//  Copyright © 2019 Liewe Gutter. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "libft.h"

@interface ft_PutChar : XCTestCase

@end

@implementation ft_PutChar

- (void)testPutChar {
	char c = 'x';
	char check[1];
	int fd;
	freopen("testputchar.txt", "w", stdout);
	ft_putchar(c);
	fd = open("testputchar.txt", O_RDONLY);
	read(fd, check, 1);
	XCTAssert(check[0] == c, @"PutChar failed, character printed was \'%c\'", check[0]);
	close(fd);
}

@end
