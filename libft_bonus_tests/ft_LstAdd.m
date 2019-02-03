//
//  ft_LstAdd.m
//  ft
//
//  Created by Liewe Gutter on 02/02/2019.
//  Copyright © 2019 Liewe Gutter. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "libft.h"

@interface ft_LstAdd : XCTestCase

@end

@implementation ft_LstAdd

- (void)testWithSingleElement {
	t_list *new;
	t_list *old;
	t_list **start;
	new = ft_lstnew("Stuxnet", 8);
	old = ft_lstnew("Iran", 5);
	start = &old;
	ft_lstadd(start, new);
	XCTAssert(*start == new && (*start)->content_size == 8,
			  @"ft_lstadd failed with one element. returned address: %p, expected: %p", *start, new);
}

- (void)testWithTenElements {
	size_t index = 0;
	t_list **new = (t_list **)malloc(sizeof(t_list *) * 10);
	t_list *old;
	t_list **start;
	t_list *check;
	old = ft_lstnew("Iran", 5);
	start = &old;
	while (index < 10)
	{
		new[index] = ft_lstnew("Stuxnet", 8);
		ft_lstadd(start, new[index]);
		index++;
	}
	check = *start;
	while (check->next != NULL)
	{
		index--;
		check = check->next;
	}
	XCTAssert(index == 0, @"ft_lstadd failed with ten element. amount of missing elemens: %zu", index);
}

- (void)testWithOneHundredElements {
	size_t index = 0;
	t_list **new = (t_list **)malloc(sizeof(t_list *) * 100);
	t_list *old;
	t_list **start;
	t_list *check;
	old = ft_lstnew("Iran", 5);
	start = &old;
	while (index < 100)
	{
		new[index] = ft_lstnew("Stuxnet", 8);
		ft_lstadd(start, new[index]);
		index++;
	}
	check = *start;
	while (check->next != NULL)
	{
		index--;
		check = check->next;
	}
	XCTAssert(check->content_size == 5 && index == 0, @"ft_lstadd failed with 100 element. amount of missing elemens: %zu", index);
}

- (void)testWithOneHundredThousandElements {
	size_t index = 0;
	t_list **new = (t_list **)malloc(sizeof(t_list *) * 100000);
	t_list *old;
	t_list **start;
	t_list *check;

	old = ft_lstnew("Iran", 5);
	start = &old;
	while (index < 100000)
	{
		new[index] = ft_lstnew("Stuxnet", 8);
		ft_lstadd(start, new[index]);
		index++;
	}
	check = *start;
	while (check->next != NULL)
	{
		index--;
		check = check->next;
	}
	XCTAssert(check->content_size == 5 && index == 0, @"ft_lstadd failed with 100 element. amount of missing elemens: %zu", index);
}

@end
