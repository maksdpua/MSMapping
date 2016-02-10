//
//  ViewController.m
//  MSMapping
//
//  Created by Maks on 2/6/16.
//  Copyright © 2016 Maks. All rights reserved.
//

#import "ViewController.h"
#import "MSMapper.h"
#import "MSDesirializer.h"
#import "MSModel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    NSDictionary *dic1 = @{@"model" : @"A1",
                           @"color" : @"red",
                           @"number" : @"1",
                           @"www" : @{@"name" : @"BBBB"},
                           @"zzz" : @[@{@"name" : @"1111"}, @{@"name" : @"2222"}]};

    
    MSMapper *objectMap = [MSModel defaultMapping];
    

    
    MSModel *model = [MSDesirializer deserializeWithJSON:dic1 mapping:objectMap];
    
    
    
    
    
    
    
}



@end
