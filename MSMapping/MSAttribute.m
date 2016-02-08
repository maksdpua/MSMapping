//
//  MSAttribute.m
//  MSMapping
//
//  Created by Maks on 2/6/16.
//  Copyright © 2016 Maks. All rights reserved.
//

#import "MSAttribute.h"

@implementation MSAttribute

- (instancetype)initWithMapper:(MSMapper *)mapper propertyName:(NSString *)propertyName keyPath:(NSString *)keyPath {
    self = [super init];
    if (self) {
        self.mapper = mapper;
        self.propertyName = propertyName;
        self.keyPath = keyPath;
    }
    return self;
}

@end
