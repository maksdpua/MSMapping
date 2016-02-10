//
//  MSMapper.h
//  MSMapping
//
//  Created by Maks on 2/6/16.
//  Copyright © 2016 Maks. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MSDefaultModel.h"
#import "MSOne.h"

#import "MSAttribute.h"

@interface MSMapper : NSObject

@property (nonatomic, strong) NSMutableArray *oneToOne;
@property (nonatomic, strong) NSMutableArray *oneToMany;

@property (nonatomic, strong) NSMutableArray *attributesArray;
@property (nonatomic, strong) NSMutableDictionary *attributesDictionary;
@property (nonatomic, strong) id obj;


- (instancetype)initWithClass:(Class)aClass;

- (void)addAttributesFromArray:(NSArray *)array;

- (void)addAttributesFromDictionary:(NSDictionary *)dic;

- (void)addAttributesOneToOne:(MSMapper *)mapper propertyName:(NSString *)propertyName keyPath:(NSString *)keyPath;

- (void)addAttributesOneToMany:(MSMapper *)mapper propertyName:(NSString *)propertyName keyPath:(NSString *)keyPath;

+ (void)createNewObjectInMapper:(MSMapper *)mapper;

@end
