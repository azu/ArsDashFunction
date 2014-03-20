//
// Created by azu on 2014/03/20.
//


#import <Foundation/Foundation.h>
#import <XCTest/XCTest.h>
#import "ArsMinMax.h"
@interface ArsMinMaxTest : XCTestCase
@end

@implementation ArsMinMaxTest {
}

- (void)testMin {
    XCTAssertEqualObjects(ArsMin(@[@1, @2, @3]), @1);
    XCTAssertEqualObjects(ArsMin(@[@1, @-100, @3]), @-100);
    XCTAssertNil(ArsMin(@[]));
}

- (void)testMax {
    XCTAssertEqualObjects(ArsMax(@[@1, @2, @3]), @3);
    XCTAssertEqualObjects(ArsMax(@[@1, @100, @3]), @100);
    XCTAssertNil(ArsMax(@[]));
}
@end
