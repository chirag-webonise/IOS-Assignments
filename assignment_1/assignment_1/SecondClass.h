//
//  SecondClass.h
//  assignment_1
//
//  Created by Webonise on 07/08/14.
//  Copyright (c) 2014 iosTraining. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "FirstClass.h"

@interface SecondClass : NSObject

@property (strong, nonatomic) FirstClass* firstObj;

-(void)initFirstObject:(int)intValue andFloat: (float)floatValue andBool: (BOOL)boolValue andChar: (char)charValue andString: (NSString*)stringValue andNumber: (NSNumber*)numValue;

@end
