//
//  Bars.h
//  Bars
//
//  Created by Xavier Hernandez on 06/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Bar.h"

@interface Bars : NSObject

@property (nonatomic, readonly) NSUInteger count;

- (void)addBar:(Bar *)bar;
- (void)removeBar:(Bar *)bar;
- (NSUInteger)count;
- (NSArray *)allBars;
- (id)initWithFile:(NSString *)fileName;

@end
