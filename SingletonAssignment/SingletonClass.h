#import <Foundation/Foundation.h>

@interface SingletonClass : NSObject

@property NSMutableString * name;

+(SingletonClass *)theObject;
-(void)changeString:(NSString*)string;

@end
