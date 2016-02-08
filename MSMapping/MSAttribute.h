//
//  MSAttribute.h
//  MSMapping
//
//  Created by Maks on 2/6/16.
//  Copyright © 2016 Maks. All rights reserved.
//

#import <Foundation/Foundation.h>
@class MSMapper;

@interface MSAttribute : NSObject

@property (nonatomic, readwrite) MSMapper *mapper;
@property (nonatomic, readwrite) NSString *propertyName;
@property (nonatomic, readwrite) NSString *keyPath;

- (instancetype)initWithMapper:(MSMapper *)mapper propertyName:(NSString *)propertyName keyPath:(NSString *)keyPath;

@end
