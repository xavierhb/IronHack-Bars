//
//  Bars.m
//  Bars
//
//  Created by Xavier Hernandez on 06/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import "Bars.h"

@interface Bars ()

@property (nonatomic, strong) NSMutableArray *barsList;

@end

@implementation Bars

#pragma mark - initializers

- (instancetype)init {
	
	self = [super init];
	if(self){
		_barsList = [[NSMutableArray alloc] init];
	}
	return self;
	
}

- (void)addBar:(Bar *)bar{
	
	[self.barsList addObject:bar];
	
}

- (void)removeBar:(Bar *)bar{
	
	[self.barsList removeObject:bar];
	
}

- (NSUInteger)count{

	return [self.barsList count];
	
}

- (NSArray *)allBars{

	return self.barsList;
	
}

- (id)initWithFile:(NSString *)fileName{
	
	
	if(self = [self init])
	{
		
		NSString *fileNameAndPath = [[NSBundle mainBundle] pathForResource:fileName ofType:@"plist"];
		NSArray *array = [NSArray arrayWithContentsOfFile:fileNameAndPath];
		
		for(NSDictionary *dict in array){
			Bar *bar = [[Bar alloc] init];
			
			[bar setName:[dict objectForKey:@"name"]];
			[bar setAddress:[dict objectForKey:@"address"]];
			[bar setRating:[[dict objectForKey:@"rating"]integerValue]];
			[bar setDescription:[dict objectForKey:@"description"]];
			[bar setLat:[[dict objectForKey:@"lat"]floatValue]];
			[bar setLon:[[dict objectForKey:@"lon"] floatValue]];
			
			[_barsList addObject:bar];
			
		}
		
		// TODO: carga reflexiva
		
	}
	
	return self;
	
}



@end
