//
//  NSArray+JKLFiltering.h
//
//  Copyright (c) 2012 JK Laiho.
//

#import "NSArray+JKLFiltering.h"

@implementation NSArray (JKLFiltering)

- (NSArray *)filteredArrayUsingBlock:(JKLFilteringBlock)block {
    NSMutableArray *matches = [NSMutableArray array];
    for (id obj in self) {
        if (block(obj)) [matches addObject:obj];
    }
    return [matches copy];
}

- (NSArray *)filteredArrayUsingRegex:(NSRegularExpression *)regex {
    NSMutableArray *matches = [NSMutableArray array];
    for (id obj in self) {
        // Force to string. TODO might benefit from some error checking.
        NSString *item = [NSString stringWithFormat:@"%@", obj];
        if ([regex numberOfMatchesInString:item options:0 range:NSMakeRange(0, [item length])] > 0) {
            [matches addObject:item];
        }
    }
    return [matches copy];
}

@end
