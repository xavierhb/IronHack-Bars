//
//  BarsTests.m
//  BarsTests
//
//  Created by Xavier Hernandez on 06/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Bar.h"

@interface BarsTests : XCTestCase

@end

#define TEST_NAME @"Test Bar"
#define TEST_ADDRESS @"Calle Alameda 1"
#define TEST_LAT 40.411735
#define TEST_LONG -3.693793
#define TEST_M @"🙉 WOW"


@implementation BarsTests

- (void)testCanCreateABar{
	
	Bar *testBar = [[Bar alloc] init];
	
	XCTAssertNotNil(testBar, TEST_M);
}

- (void)testCanCreateABarWithInitNameAndAddresAndLatAndLon{
	
	Bar *testBar = [[Bar alloc] initWithName:TEST_NAME andAddres:TEST_ADDRESS andLat:TEST_LAT andLong:TEST_LONG];
	XCTAssertNotNil(testBar, TEST_M);
	
	XCTAssertEqualObjects(TEST_NAME, testBar.name, TEST_M);
	XCTAssertEqualObjects(TEST_ADDRESS, testBar.address, TEST_M);
	XCTAssertEqualWithAccuracy(TEST_LAT, testBar.lat, 0.0001, TEST_M);
	XCTAssertEqualWithAccuracy(TEST_LONG, testBar.lon, 0.0001, TEST_M);
	XCTAssertEqualObjects(@"", testBar.description, TEST_M);
	XCTAssertEqual(0, testBar.rating, TEST_M);
	XCTAssertEqualObjects(@"", testBar.url, TEST_M);
	
}

@end
