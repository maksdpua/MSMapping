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

+ (id)defaultMapping {
    MSMapper *mapper = [[MSMapper alloc]initWithClass:self.class];
    [mapper addAttributesFromDictionary:@{@"www" : @"name"}];
//    [mapper addAttributesFromArray:@[@"name"]];
    
//    [mapper addAttributesFromMapping:[MSOne defaultMapping] propertyName:@"one" keyPath:@"www"];
    return mapper;
}

@end
