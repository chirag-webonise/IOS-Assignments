//
//  main.m
//  assignment_1
//
//  Created by Webonise on 07/08/14.
//  Copyright (c) 2014 iosTraining. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SecondClass.h"

int main(int argc, const char * argv[])
{


    @autoreleasepool {
        
        SecondClass * obj2 = [[SecondClass alloc] init];
        
        [obj2 initFirstObject:12 andFloat:32.2 andBool:YES andChar:'c' andString:@"test" andNumber:[NSNumber numberWithInt:50]];

    }
    return 0;
}

