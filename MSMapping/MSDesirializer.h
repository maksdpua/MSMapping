//
//  MSDesirializer.h
//  MSMapping
//
//  Created by Maks on 2/6/16.
//  Copyright © 2016 Maks. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MSMapper.h"
#import "MSOne.h"

@interface MSDesirializer : NSObject

+ (id)deserializeWithJSON:(NSDictionary *)json mapping:(MSMapper *)currentMapping;

@end
