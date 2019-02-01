//
//  ft_PutEndL.m
//  ft
//
//  Created by Liewe Gutter on 23/01/2019.
//  Copyright © 2019 Liewe Gutter. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "libft.h"

@interface ft_PutEndL : XCTestCase

@end

@implementation ft_PutEndL

- (void)testPutEndL {
	char *str = (char *)malloc(13);
	str = "Thisisatest\n";
	char check[12];
	int i = 0;
	int fd;
	freopen("testputstr.txt", "w", stdout);
	ft_putendl(str);
	fd = open("testputstr.txt", O_RDONLY);
	read(fd, check, 12);
	while (i < 12)
	{
		XCTAssert(check[i] == str[i], @"PutEndl failed at pos %i, printed %c instead of %c", i, check[i], str[i]);
		i++;
	}
	close(fd);
}

- (void)testPutEndlWithWeirdChars {
	char *str = (char *)malloc(11);
	str = " \n	%\e&0@!\n";
	char check[11];
	int i = 0;
	int fd;
	freopen("testputstr2.txt", "w", stdout);
	ft_putendl(str);
	fd = open("testputstr2.txt", O_RDONLY);
	read(fd, check, 10);
	while (i < 10)
	{
		XCTAssert(check[i] == str[i], @"PutEndl failed at pos %i, printed %c instead of %c", i, check[i], str[i]);
		i++;
	}
	close(fd);
}

- (void)testPutEndlEmptyString {
	char *str = (char *)malloc(1);
	str = "";
	char check[5];
	ssize_t i = 0;
	ssize_t e;
	int fd;
	freopen("testputstr.txt", "w", stdout);
	ft_putendl(str);
	fd = open("testputstr.txt", O_RDONLY);
	e = read(fd, check, 11);
	while (i < e)
	{
		XCTAssert(check[i] == '\n', @"PutEndl failed at pos %zi, printed %c instead of %c", i, check[i], str[i]);
		i++;
	}
	close(fd);
}

@end
