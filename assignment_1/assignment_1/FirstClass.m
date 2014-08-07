//
//  FirstClass.m
//  assignment_1
//
//  Created by Webonise on 07/08/14.
//  Copyright (c) 2014 iosTraining. All rights reserved.
//

#import "FirstClass.h"

@implementation FirstClass

-(void)setAllValues:(int)intValue andFloat:(float)floatValue andBool:(BOOL)boolValue andChar:(char)charValue andString:(NSString *)stringValue andNumber:(NSNumber *)numValue
{

    self.intValue = intValue;
    self.floatValue = floatValue;
    self.boolValue = boolValue;
    self.charValue = charValue ;
    self.stringValue = stringValue;
    self.numValue = numValue;
}

-(void)displayData
{
    NSLog(@"int=%d float=%f bool=%d char=%c string=%@ number=%@",self.intValue,self.floatValue,self.boolValue,self.charValue,self.stringValue,self.numValue);
}

-(float)addAllNumbers
{
    
    float sum = (float)self.intValue + self.floatValue + [self.numValue floatValue];
    return sum;
}

-(NSString *) appendCustomString:(NSString *)customString
{
    NSString* temp = [self.stringValue stringByAppendingString:customString];
    return temp;
}

-(float)squareSumNum
{
    return (float)(self.intValue*self.intValue) + self.floatValue*self.floatValue + [self.numValue floatValue]*[self.numValue floatValue];
}
@end
