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
        
        [obj2 initFirstObject];
        
        [obj2 displayFirstObject];
        
        [obj2 addNumbers];
        
        [obj2 concatString];
        
        [obj2 squareAndSum];
        
    }
    return 0;
}

