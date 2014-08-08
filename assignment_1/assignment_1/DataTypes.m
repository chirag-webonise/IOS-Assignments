//
//  DataTypes.m
//  assignment_1
//
//  Created by Webonise on 08/08/14.
//  Copyright (c) 2014 iosTraining. All rights reserved.
//

#import "DataTypes.h"

@implementation DataTypes

@synthesize intValue,floatValue,charValue,stringValue,numValue;

-(id)init
{
    self =[super init];
    
    if(self)
    {
        intValue=10;
        floatValue=10.0;
        charValue='a';
        stringValue=@"nothing";
        numValue=[NSNumber numberWithInt:10];
    }
    return self;
}

@end
