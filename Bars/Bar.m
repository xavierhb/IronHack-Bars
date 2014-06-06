//
//  Bar.m
//  Bars
//
//  Created by Xavier Hernandez on 06/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import "Bar.h"

@implementation Bar

- (id)init{
	
	self = [self initWithName:nil andAddres:nil andLat:0.0 andLong:0.0];
	
	return self;
	
}

- (id)initWithName:(NSString *)name{
	
	self = [self initWithName:name andAddres:nil andLat:0.0 andLong:0.0];
	
	return self;
	
}

- (id)initWithName:(NSString *)name andAddres:(NSString *)address{
	
	self = [self initWithName:name andAddres:address andLat:0.0 andLong:0.0];
	
	return self;
	
}

- (id)initWithName:(NSString *)name andAddres:(NSString *)address andLat:(CGFloat)lat andLong:(CGFloat)lon {
	
	self = [super init];
	
	if(self)
	{
		_name = name;
		_address = address;
		_description = @"";
		_lat = lat;
		_lon = lon;
		_rating = 0;
		_url = @"";
		
	}
	
	return self;
	
}

@end
