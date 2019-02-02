//
//  ft_LstNew.m
//  ft
//
//  Created by Liewe Gutter on 01/02/2019.
//  Copyright © 2019 Liewe Gutter. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "libft.h"

@interface ft_LstNew : XCTestCase

@end

@implementation ft_LstNew

- (void)testWithEmptyContentAndCorrectContentSize {
	t_list *new;

	new = ft_lstnew(NULL, 0);
	XCTAssert(new->content == NULL && new->content_size == 0 && new->next == NULL,
			  @"ft_lstnew failed with empty input. returned content: %p, content_size: %zu, next: %p",
			  new->content, new->content_size, new->next);
}

- (void)testWithEmptyContentButWrongContentSize {
	t_list *new;

	new = ft_lstnew(NULL, 4);
	XCTAssert(new->content == NULL && new->content_size == 0 && new->next == NULL,
			  @"ft_lstnew failed with empty input and wrong size. returned content: %p, content_size: %zu, next: %p",
			  new->content, new->content_size, new->next);
}

- (void)testWithStringContentAndCorrectContentSize {
	t_list *new;

	new = ft_lstnew("Test", 5);
	XCTAssert(strcmp("Test", new->content) == 0 && new->content_size == 5 && new->next == NULL,
			  @"ft_lstnew failed with string input. returned content strcmp result: %i, content_size: %zu, next: %p",
			   strcmp("Test", new->content), new->content_size, new->next);
}

- (void)testWithStringContentAndTooShortContentSize {
	t_list *new;

	new = ft_lstnew("Test", 3);
	XCTAssert(strcmp("Test", new->content) != 0 && new->content_size == 3 && new->next == NULL,
			  @"ft_lstnew failed with string and too short size. returned content strcmp result: %i, content_size: %zu, next: %p",
			  strcmp("Test", new->content), new->content_size, new->next);
}

- (void)testWithStringContentAndTooLongContentSize {
	t_list *new;

	new = ft_lstnew("Test", 10);
	XCTAssert(strcmp("Test", new->content) == 0 && new->content_size == 10 && new->next == NULL,
			  @"ft_lstnew failed with string and too long size. returned content strcmp result: %i, content_size: %zu, next: %p",
			  strcmp("Test", new->content), new->content_size, new->next);
}

- (void)testWithIntegerContentAndCorrectContentSize {
	t_list *new;

	int *integer = (int *)malloc(sizeof(int) * 1);
	integer[0] = 2147483647;
	new = ft_lstnew(integer, sizeof(int));
	integer[0] = 0;
	integer = (int *)new->content;
	XCTAssert(integer[0] == 2147483647 && new->content_size == sizeof(int) && new->next == NULL,
			  @"ft_lstnew failed with integer input. returned content integer: %i, content_size: %zu, next: %p",
			  integer[0], new->content_size, new->next);
}

- (void)testWithNegativeIntegerContentAndCorrectContentSize {
	t_list *new;

	int *integer = (int *)malloc(sizeof(int) * 1);
	integer[0] = -2147483647;
	new = ft_lstnew(integer, sizeof(int));
	integer[0] = 0;
	integer = (int *)new->content;
	XCTAssert(integer[0] == -2147483647 && new->content_size == sizeof(int) && new->next == NULL,
			  @"ft_lstnew failed with integer input. returned content integer: %i, content_size: %zu, next: %p",
			  integer[0], new->content_size, new->next);
}

- (void)testWithIntegerContentAndTooShortContentSize {
	t_list *new;

	int *integer = (int *)malloc(sizeof(int) * 1);
	integer[0] = 2147483647;
	new = ft_lstnew(integer, 2);
	integer[0] = 0;
	integer = (int *)new->content;
	XCTAssert(integer[0] == 65535 && new->content_size == 2 && new->next == NULL,
			  @"ft_lstnew failed with integer and too short size. returned content integer: %i, content_size: %zu, next: %p",
			  integer[0], new->content_size, new->next);
}

- (void)testWithIntegerContentAndTooLongContentSize {
	t_list *new;

	int *integer = (int *)malloc(sizeof(int) * 1);
	integer[0] = 2147482345;
	new = ft_lstnew(integer, 7);
	integer[0] = 0;
	integer = (int *)new->content;
	XCTAssert(integer[0] == 2147482345 && new->content_size == 7 && new->next == NULL,
			  @"ft_lstnew failed with integer and too short size. returned content integer: %i, content_size: %zu, next: %p",
			  integer[0], new->content_size, new->next);
}

- (void)testWithLongContentAndTooShortContentSize {
	t_list *new;

	long *integer = (long *)malloc(sizeof(int) * 1);
	integer[0] = 9223372036854775807;
	new = ft_lstnew(integer, 6);
	integer[0] = 0;
	integer = (long *)new->content;
	XCTAssert(integer[0] == 281474976710655 && new->content_size == 6 && new->next == NULL,
			  @"ft_lstnew failed with long and too short size. returned content long: %li, content_size: %zu, next: %p",
			  integer[0], new->content_size, new->next);
}

- (void)testWithLongContentAndCorrectSizeContentSize {
	t_list *new;

	long *integer = (long *)malloc(sizeof(int) * 1);
	integer[0] = 9223372036854775807;
	new = ft_lstnew(integer, 8);
	integer[0] = 0;
	integer = (long *)new->content;
	XCTAssert(integer[0] == 9223372036854775807 && new->content_size == 8 && new->next == NULL,
			  @"ft_lstnew failed with long. returned content long: %li, content_size: %zu, next: %p",
			  integer[0], new->content_size, new->next);
}

@end
