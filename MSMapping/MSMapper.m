//
//  MSMapper.m
//  MSMapping
//
//  Created by Maks on 2/6/16.
//  Copyright © 2016 Maks. All rights reserved.
//

#import "MSMapper.h"

@interface MSMapper()


@end

@implementation MSMapper

- (instancetype)initWithClass:(Class)aClass {
    self = [super init];
    if (self) {
        self.attributesArray = [NSMutableArray new];
        self.attributesDictionary = [NSMutableDictionary new];
        self.oneToOne = [NSMutableArray new];
        self.obj = [aClass new];
    }
    
    return self;
}

- (void)addAttributesFromArray:(NSArray *)array {
    [self.attributesArray addObjectsFromArray:array];
}

- (void)addAttributesFromDictionary:(NSDictionary *)dic {
    [self.attributesDictionary addEntriesFromDictionary:dic];
}

- (void)addObjectForAttribute: (MSDefaultModel *)model {
    [self.oneToOne setValue:model forKey:@"one"];
}

- (void)addAttributesFromMapping:(MSMapper *)mapper propertyName:(NSString *)propertyName keyPath:(NSString *)keyPath {
    [self.oneToOne addObject:[[MSAttribute alloc] initWithMapper:mapper propertyName:propertyName keyPath:keyPath]];
}



@end
