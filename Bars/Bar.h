//
//  Bar.h
//  Bars
//
//  Created by Xavier Hernandez on 06/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Bar : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *address;
@property (nonatomic) NSUInteger rating;
@property (nonatomic, strong) NSString *description;
@property (nonatomic) CGFloat lat;
@property (nonatomic) CGFloat lon;
@property (nonatomic, strong) NSString *url;

- (id)init;
- (id)initWithName:(NSString *)name;
- (id)initWithName:(NSString *)name andAddres:(NSString *)address;
- (id)initWithName:(NSString *)name andAddres:(NSString *)address andLat:(CGFloat)lat andLong:(CGFloat)lon;

@end
