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

-(void)initFirstObject:(int)intValue andFloat:(float)floatValue andBool:(BOOL)boolValue andChar:(char)charValue andString:(NSString *)stringValue andNumber:(NSNumber *)numValue
{
    firstObj = [[FirstClass alloc] init];
    
    [firstObj setAllValues:intValue andFloat:floatValue andBool:boolValue andChar:charValue andString:stringValue andNumber:numValue];
    [firstObj displayData];
    NSLog(@"Sum : %f",[firstObj addAllNumbers]);
    NSLog(@"String : %@",[firstObj appendCustomString:@" is everything"]);
    NSLog(@"Square Sum : %f",[firstObj squareSumNum]);
}


@end
