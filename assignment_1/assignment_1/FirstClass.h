//
//  FirstClass.h
//  assignment_1
//
//  Created by Webonise on 07/08/14.
//  Copyright (c) 2014 iosTraining. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface FirstClass : NSObject
@property (readwrite, nonatomic) int intValue;
@property (readwrite, nonatomic) float floatValue;
@property (readwrite,nonatomic) BOOL boolValue;
@property (readwrite,nonatomic) char charValue;
@property (strong, nonatomic) NSString* stringValue;
@property(strong, nonatomic) NSNumber* numValue;

-(void)setAllValues: (int)intValue andFloat: (float)floatValue andBool: (BOOL)boolValue andChar: (char)charValue andString: (NSString*)stringValue andNumber: (NSNumber*)numValue;

-(void)displayData;

-(float)addAllNumbers;

-(NSString*)appendCustomString : (NSString*)customString;

-(float)squareSumNum;

@end
