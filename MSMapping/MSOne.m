//
//  MSOne.m
//  MSMapping
//
//  Created by Maks on 2/6/16.
//  Copyright © 2016 Maks. All rights reserved.
//

#import "MSOne.h"
#import "MSMapper.h"

@implementation MSOne

- (instancetype)init {
    self = [super init];
    if (self) {
        self.name = [NSString new];
    }
    return self;
}

+ (id)defaultMapping {
    MSMapper *mapper = [[MSMapper alloc]initWithClass:self.class];
    [mapper addAttributesFromArray:@[@"name"]];
    return mapper;
}

@end
