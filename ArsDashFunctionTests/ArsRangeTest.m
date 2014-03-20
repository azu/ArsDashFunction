//
// Created by azu on 2014/03/20.
//


#import <Foundation/Foundation.h>
#import <XCTest/XCTest.h>
#import "ArsRange.h"

@interface ArsRangeTest : XCTestCase
@end

@implementation ArsRangeTest {
}

- (void)testArsRange {
    NSArray *a_expected = @[@1, @2];
    XCTAssertEqualObjects(ArsRange(@1, @3), a_expected);
    NSArray *b_expected = @[@-1, @0, @1, @2];
    XCTAssertEqualObjects(ArsRange(@-1, @3), b_expected);
    NSArray *c_expected = @[@9];
    XCTAssertEqualObjects(ArsRange(@9, @10), c_expected);
    XCTAssertEqualObjects(ArsRange(@1, @1), @[]);
}

- (void)testArsRangeStep {
    NSArray *a_expected = @[@1, @2];
    XCTAssertEqualObjects(ArsRange(@1, @3, @1), a_expected);
    NSArray *b_expected = @[@3, @6, @9];
    XCTAssertEqualObjects(ArsRange(@3, @10, @3), b_expected);
    NSArray *c_expected = @[@3];
    XCTAssertEqualObjects(ArsRange(@3, @10, @15), c_expected);
    NSArray *d_expected = @[@12, @10, @8];
    XCTAssertEqualObjects(ArsRange(@12, @7, @-2), d_expected);
}

@end
