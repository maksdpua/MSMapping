//
//  MSModel.m
//  MSMapping
//
//  Created by Maks on 2/6/16.
//  Copyright © 2016 Maks. All rights reserved.
//

#import "MSModel.h"

@implementation MSModel

+ (id)defaultMapping {
    MSMapper *mapper = [[MSMapper alloc]initWithClass:self.class];
    [mapper addAttributesFromDictionary:@{@"model" : @"nameModel", @"color" : @"colorModel"}];
    [mapper addAttributesFromArray:@[@"number", @"one", @"oneToMany"]];
    
    [mapper addAttributesOneToOne:[MSOne defaultMapping] propertyName:@"one" keyPath:@"www"];
    [mapper addAttributesOneToMany:[MSOneToMany defaultMapping] propertyName:@"oneToMany" keyPath:@"zzz"];
    return mapper;
}

@end
