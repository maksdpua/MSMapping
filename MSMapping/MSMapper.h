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

@property (nonatomic, strong) NSMutableArray *attributesArray;
@property (nonatomic, strong) NSMutableDictionary *attributesDictionary;
@property (nonatomic, strong) id obj;
//@property (nonatomic, strong) MSOne *oneToOne;
//@property (nonatomic, strong) NSMutableArray <MSDefaultModel *> *oneToMany;

- (instancetype)initWithClass:(Class)aClass;

- (void)addAttributesFromArray:(NSArray *)array;

- (void)addAttributesFromDictionary:(NSDictionary *)dic;

//- (void)addObjectForAttribute: (MSDefaultModel *)model;

//- (void)addOjectsForAttribute: (NSArray <MSDefaultModel *> *) array;

- (void)addAttributesFromMapping:(MSMapper *)mapper propertyName:(NSString *)propertyName keyPath:(NSString *)keyPath;

@end
