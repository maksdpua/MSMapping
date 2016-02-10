//
//  MSDesirializer.m
//  MSMapping
//
//  Created by Maks on 2/6/16.
//  Copyright © 2016 Maks. All rights reserved.
//

#import "MSDesirializer.h"

@implementation MSDesirializer

+ (id)deserializeWithJSON:(NSDictionary *)json mapping:(MSMapper *)currentMapping {
    [self setArrayMapping:currentMapping jsonDic:json];
    [self setDictionaryMapping:currentMapping jsonDic:json];
    [self setOneToOneRelationship:currentMapping jsondic:json];
    [self setOneToManyRelationship:currentMapping jsondic:json];
    
    return currentMapping.obj;
}

+ (void)setArrayMapping:(MSMapper *)mapper jsonDic:(NSDictionary *)dictionary {
    for (NSString *key in mapper.attributesArray) {
        [mapper.obj setValue:[dictionary valueForKey:key] forKey:key];
    }
}

+ (void)setDictionaryMapping:(MSMapper *)mapper jsonDic:(NSDictionary *)dic {
    [mapper.attributesDictionary enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        id value = [dic valueForKey:key];
        [mapper.obj setValue:value forKey:obj];
    }];
}

+ (void)setOneToOneRelationship:(MSMapper *)mapper jsondic:(NSDictionary *)dic {
    for (MSAttribute *attribute in mapper.oneToOne) {
       
        [mapper.obj setValue:[self deserializeWithJSON:[dic valueForKey: attribute.keyPath] mapping:attribute.mapper] forKey:attribute.propertyName];
    }
}

+ (void)setOneToManyRelationship:(MSMapper *)mapper jsondic:(NSDictionary *)dic {
    NSMutableArray *array = [NSMutableArray new];
    for (MSAttribute *attribute in mapper.oneToMany) {
        for (NSDictionary *keyPathDic in [dic valueForKey:attribute.keyPath]) {
            [array addObject:[self deserializeWithJSON:keyPathDic mapping:attribute.mapper]];
            [MSMapper createNewObjectInMapper:attribute.mapper];
        }
        [mapper.obj setValue:array forKey:attribute.propertyName];
    }
}

@end
