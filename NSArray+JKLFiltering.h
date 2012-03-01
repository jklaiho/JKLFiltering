//
//  NSArray+JKLFiltering.h
//
//  Copyright (c) 2012 JK Laiho.
//

#import <Foundation/Foundation.h>

typedef BOOL(^JKLFilteringBlock)(id);

@interface NSArray (JKLFiltering)

- (NSArray *)filteredArrayUsingBlock:(JKLFilteringBlock)block;
- (NSArray *)filteredArrayUsingRegex:(NSRegularExpression *)regex;

@end
