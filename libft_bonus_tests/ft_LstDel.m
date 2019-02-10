//
//  ft_LstDel.m
//  ft
//
//  Created by Liewe Gutter on 02/02/2019.
//  Copyright © 2019 Liewe Gutter. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "libft.h"

@interface ft_LstDel : XCTestCase

@end

@implementation ft_LstDel

void	ft_memdel_size_lstdel(void *pointer, size_t size)
{
    size_t			index;
    unsigned char	*input;
    
    index = 0;
    input = pointer;
    while (index < size)
    {
        input[index] = 0;
        index++;
    }
    free(pointer);
    pointer = NULL;
}

- (void)testWithOneElementContainingNULL {
	t_list *new;

	new = ft_lstnew(NULL, 0);
	ft_lstdel(&new, ft_memdel_size_lstdel);
	XCTAssert(new == NULL, @"ft_del failed to delete element containing NULL. returned %p instead.", new);
}

- (void)testWithOneElementContainingStrings {
	t_list *new;

	new = ft_lstnew("Test", 5);
	ft_lstdel(&new, ft_memdel_size_lstdel);
	XCTAssert(new == NULL, @"ft_del failed to delete element containing a string. returned %p instead.", new);
}

//CANT GET THIS FUNCTIONAL TESTING MORE THAN ONE ELEMENTS... FUNCTION WORKS THOUGH.
- (void)testWithThreeElementsContainingStrings {
	t_list **new = (t_list **)malloc(sizeof(t_list *) * 3);
	size_t index = 0;
	t_list **start;
	new[0] = ft_lstnew("Test", 5);
	new[1] = ft_lstnew("blub", 5);
	new[2] = ft_lstnew("stuxnet", 7);
	start = &new[0];
	ft_lstadd(start, new[1]);
	ft_lstadd(start, new[2]);
	ft_lstdel(start, ft_memdel_size_lstdel);
	XCTAssert(new[index] == NULL, @"ft_delone failed to delete element %zu containing strings. returned %p instead.", index, new[index]);
}

@end
