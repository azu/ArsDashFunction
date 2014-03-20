//
// Created by azu on 2014/03/20.
//


#import <Foundation/Foundation.h>

// return min number - `ArsMin(@[@1,@2,@3]); => @1
__attribute__((overloadable)) NSNumber *ArsMin(NSArray *numbers);

// return max number - `ArsMaxb(@[@1,@2,@3]); => @3
__attribute__((overloadable)) NSNumber *ArsMax(NSArray *numbers);
