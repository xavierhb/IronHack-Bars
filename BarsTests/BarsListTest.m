//
//  BarsListTest.m
//  Bars
//
//  Created by Xavier Hernandez on 06/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Bars.h"

@interface BarsListTest : XCTestCase

@end

#define TEST_M @"🙉 WOW"

@implementation BarsListTest

-(void)testCanCreateBarsWithFile {

	Bars *barsList = [[Bars alloc] initWithFile:@"barsList"];
	XCTAssertNotNil(barsList, TEST_M);
	XCTAssertTrue(barsList.count>0, TEST_M);
	
	for(Bar *bar in [barsList allBars])
	{
		
		XCTAssertTrue([bar isKindOfClass:[Bar class]], TEST_M);
		XCTAssertNotNil([bar name], TEST_M);
		
	}

}

@end
