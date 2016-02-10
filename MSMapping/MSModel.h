//
//  MSModel.h
//  MSMapping
//
//  Created by Maks on 2/6/16.
//  Copyright © 2016 Maks. All rights reserved.
//

#import "MSDefaultModel.h"
#import "MSOne.h"
#import "MSMapper.h"
#import "MSOneToMany.h"

@interface MSModel : MSDefaultModel

@property (nonatomic, strong) NSString *nameModel;
@property (nonatomic, strong) NSString *colorModel;
@property (nonatomic, strong) NSString *number;
@property (nonatomic, strong) MSOne *one;
@property (nonatomic, strong) MSOneToMany *oneToMany;
//@property (nonatomic, strong) NSArray <MSOne *> *oneToMany;

@end
