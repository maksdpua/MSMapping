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
        [mapper.obj setValue:[dic valueForKey: attribute.keyPath] forKey:attribute.propertyName];
    }
}

@end
