//
//  ft_PutStr.m
//  ft
//
//  Created by Liewe Gutter on 23/01/2019.
//  Copyright © 2019 Liewe Gutter. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "libft.h"

@interface ft_PutStr : XCTestCase

@end

@implementation ft_PutStr

- (void)testPutStr {
	char *str = (char *)malloc(12);
	str = "Thisisatest";
	char check[11];
	int i = 0;
	int fd;
	freopen("testputstr.txt", "w", stdout);
	ft_putstr(str);
	fd = open("testputstr.txt", O_RDONLY);
	read(fd, check, 11);
	while (i < 11)
	{
		XCTAssert(check[i] == str[i], @"PutStr failed at pos %i, printed %c instead of %c", i, check[i], str[i]);
		i++;
	}
}

- (void)testPutStrWithWeirdChars {
	char *str = (char *)malloc(10);
	str = " \n	%\e&0@!";
	char check[10];
	int i = 0;
	int fd;
	freopen("testputstr2.txt", "w", stdout);
	ft_putstr(str);
	fd = open("testputstr2.txt", O_RDONLY);
	read(fd, check, 10);
	while (i < 10)
	{
		XCTAssert(check[i] == str[i], @"PutStr failed at pos %i, printed %c instead of %c", i, check[i], str[i]);
		i++;
	}
}

- (void)testPutStrEmptyString {
	char *str = (char *)malloc(1);
	str = "";
	char check[5];
	ssize_t i;
	int fd;
	freopen("testputstr.txt", "w", stdout);
	ft_putstr(str);
	fd = open("testputstr.txt", O_RDONLY);
	i = read(fd, check, 11);
	XCTAssert(i == 0, @"PutStr failed at pos %zi, printed %c instead of %c", i, check[i], str[i]);

}
@end
