//
//  DataTypes.h
//  assignment_1
//
//  Created by Webonise on 08/08/14.
//  Copyright (c) 2014 iosTraining. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataTypes : NSObject

@property (nonatomic) int intValue;
@property (readwrite, nonatomic) float floatValue;
@property (readwrite,nonatomic) BOOL boolValue;
@property (readwrite,nonatomic) char charValue;
@property (retain, nonatomic) NSString* stringValue;
@property(retain, nonatomic) NSNumber* numValue;

@end
