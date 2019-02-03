//
//  ft_LstIter.m
//  ft
//
//  Created by Liewe Gutter on 03/02/2019.
//  Copyright © 2019 Liewe Gutter. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "libft.h"

@interface ft_LstIter : XCTestCase

@end

@implementation ft_LstIter

void	ft_iterlist(t_list *elem)
{
	strcpy(elem->content, "Stuxnet");
	elem->content_size = 8;
}

- (void)testWithSingleElement {
	t_list *new;
	t_list *old;
	t_list **start;
	new = ft_lstnew("Allisfine", 10);
	old = ft_lstnew("Iran", 5);
	start = &old;
	ft_lstadd(start, new);
	ft_lstiter(old, ft_iterlist);
	XCTAssert(strcmp("Stuxnet", (*start)->content) == 0 && (*start)->content_size == 8,
			  @"ft_lstiter failed with at element 1. content: %s content size: %zu", (*start)->content, (*start)->content_size);

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
		new[index] = ft_lstnew("Allisfine", 10);
		ft_lstadd(start, new[index]);
		index++;
	}
	check = *start;
	ft_lstiter(check, ft_iterlist);
	while (check->next != NULL)
	{
		index--;
		XCTAssert(strcmp("Stuxnet", check->content) == 0 && check->content_size == 8, @"ft_lstiter failed with at element %zu. content: %s content size: %zu", index, check->content, check->content_size);
		check = check->next;
	}
	XCTAssert(index == 0, @"missing elements! elements missed: %zu", index);
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
		new[index] = ft_lstnew("Allisfine", 10);
		ft_lstadd(start, new[index]);
		index++;
	}
	check = *start;
	ft_lstiter(check, ft_iterlist);
	while (check->next != NULL)
	{
		index--;
		XCTAssert(strcmp("Stuxnet", check->content) == 0 && check->content_size == 8, @"ft_lstiter failed with at element %zu. content: %s content size: %zu", index, check->content, check->content_size);
		check = check->next;
	}
	XCTAssert(index == 0, @"missing elements! elements missed: %zu", index);
}


@end
