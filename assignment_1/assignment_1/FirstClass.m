//
//  FirstClass.m
//  assignment_1
//
//  Created by Webonise on 07/08/14.
//  Copyright (c) 2014 iosTraining. All rights reserved.
//

#import "FirstClass.h"

@implementation FirstClass

-(void)setAllValues
{
    
    DataTypes *dataObj = [[DataTypes alloc ]init];
    
    _intValue = dataObj.intValue;
    self.floatValue = dataObj.floatValue;
    self.boolValue = dataObj.boolValue;
    self.charValue = dataObj.charValue ;
    self.stringValue = dataObj.stringValue;
    self.numValue = dataObj.numValue;
}

-(void)displayData
{
    NSLog(@"int=%d float=%f bool=%d char=%c string=%@ number=%@",_intValue,_floatValue,_boolValue,_charValue,_stringValue,_numValue);
}

-(float)addAllNumbers
{
    
    float sum = (float)_intValue + _floatValue + _numValue.floatValue ;
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
