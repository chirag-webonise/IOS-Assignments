//
//  SecondClass.m
//  assignment_1
//
//  Created by Webonise on 07/08/14.
//  Copyright (c) 2014 iosTraining. All rights reserved.
//

#import "SecondClass.h"

@implementation SecondClass

@synthesize firstObj;

-(void)initFirstObject
{
    firstObj = [[FirstClass alloc] init];
    [firstObj setAllValues];
}


-(void)displayFirstObject
{
    [firstObj displayData];
}

-(void)addNumbers
{
    NSLog(@"Sum : %f",[firstObj addAllNumbers]);
}

-(void)concatString
{
    NSLog(@"String : %@",[firstObj appendCustomString:@" is everything"]);
}

-(void)squareAndSum
{
    NSLog(@"Square Sum : %f",[firstObj squareSumNum]);
}

@end
