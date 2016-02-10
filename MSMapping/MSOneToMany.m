//
//  MSOneToMany.m
//  MSMapping
//
//  Created by Maks on 2/9/16.
//  Copyright © 2016 Maks. All rights reserved.
//

#import "MSOneToMany.h"
#import "MSMapper.h"

@implementation MSOneToMany

+ (id)defaultMapping {
    MSMapper *mapper = [[MSMapper alloc]initWithClass:self.class];
    [mapper addAttributesFromArray:@[@"name"]];
    return mapper;
}

@end
