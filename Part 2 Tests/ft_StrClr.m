//
//  ft_StrClr.m
//  ft
//
//  Created by Liewe Gutter on 16/01/2019.
//  Copyright © 2019 Liewe Gutter. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "libft.h"

@interface ft_StrClr : XCTestCase

@end

@implementation ft_StrClr

- (void)testIfStrClrSetAllStrPosTo0 {
	char *str;
	char src[10] = "testerder";
	int i = 0;

	str = (char*)malloc(sizeof(char) * 10);
	while (src[i])
	{
		str[i] = src[i];
		i++;
	}
	str[i] = '\0';
	ft_strclr(str);
	while (i >= 0)
	{
		XCTAssert(str[i] == '\0', @"string not properly cleared");
		i--;
	}
	free(str);
}

//CREATES BAD EXCESS ERROR, WHICH IS EXPECTED
//- (void)testIfStrClrSetAllStrPosTo0WithStringOfZeroLen {
//	char *str;
//	int i = 0;
//
//	str = (char*)malloc(sizeof(char) * 0);
//	ft_strclr(str);
//	XCTAssert(str[i] == '\0', @"string not properly allocated");
//
//}

@end
