//
//  ft_LstDelOne.m
//  ft
//
//  Created by Liewe Gutter on 02/02/2019.
//  Copyright © 2019 Liewe Gutter. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "libft.h"

@interface ft_LstDelOne : XCTestCase

@end

@implementation ft_LstDelOne

void	ft_memdel_size_lstdelone(void *pointer, size_t size)
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

- (void)testWithElementContainingNULL {
	t_list *new;

	new = ft_lstnew(NULL, 0);
	ft_lstdelone(&new, ft_memdel_size_lstdelone);
	XCTAssert(new == NULL, @"ft_delone failed to delete element containing NULL. returned %p instead.", new);
}

- (void)testWithElementContainingString {
	t_list *new;

	new = ft_lstnew("Test", 5);
	ft_lstdelone(&new, ft_memdel_size_lstdelone);
	XCTAssert(new == NULL, @"ft_delone failed to delete element containing a string. returned %p instead.", new);
}

- (void)testWithElementContainingStringButNULLFunctionPointer {
	t_list *new;

	new = ft_lstnew("Test", 5);
	ft_lstdelone(&new, NULL);
	XCTAssert(new == NULL, @"ft_delone failed to delete element containing a string. returned %p instead.", new);
}

- (void)testWithElementContainingInteger {
	t_list *new;
	int *integer = (int *)malloc(sizeof(int) * 1);

	integer[0] = 2147483647;
	new = ft_lstnew(integer, 4);
	ft_lstdelone(&new, ft_memdel_size_lstdelone);
	XCTAssert(new == NULL, @"ft_delone failed to delete element containing an integer. returned %p instead.", new);
}


@end
