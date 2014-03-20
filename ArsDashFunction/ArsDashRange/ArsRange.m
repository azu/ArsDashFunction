//
// Created by azu on 2014/03/20.
//


#import "ArsRange.h"

__attribute__((overloadable)) NSArray *ArsRange(NSNumber *start, NSNumber *stop) {
    return ArsRange(start, stop, @1);
}

__attribute__((overloadable)) NSArray *ArsRange(NSNumber *start, NSNumber *stop, NSNumber *step) {
    NSCParameterAssert(start != nil);
    NSCParameterAssert(stop != nil);
    NSCParameterAssert(![stop isEqualToNumber:@0]);
    NSCParameterAssert(step != nil);

    double startValue = [start doubleValue],
        stopValue = [stop doubleValue],
        stepValue = [step doubleValue];
    NSUInteger rangeLength = (NSUInteger)MAX(ceil((stopValue - startValue) / stepValue), 0);
    NSMutableArray *mutableArray = [NSMutableArray array];
    for (NSUInteger i = 0; i < rangeLength; i++) {
        [mutableArray addObject:@(startValue)];
        startValue += stepValue;
    }
    return [mutableArray copy];
}