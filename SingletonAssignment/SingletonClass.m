#import "SingletonClass.h"

@implementation SingletonClass

static SingletonClass *object = nil;
@synthesize name;

#pragma mark - Singleton Class Method

+(SingletonClass *)theObject
{
    if(!object)
    {
        object = [[SingletonClass alloc] init];
        return object;
    }
    return object;
}

#pragma mark - Singleton init And alloc

-(id)alloc
{
    return [SingletonClass theObject];
}

-(id)init
{
    if(object==nil)
    {
        object = [super init];
        name =[[NSMutableString alloc]init];
        [name setString:@"Global String"];
        NSLog(@"\n  Singleton Instance Created");
    }
    return [SingletonClass theObject];
}

#pragma mark - Singleton Instance Method

/*
 Folling method is for changing the name property of the class.
 string: this the parameter used for changing the name of class.
 */

-(void)changeString:(NSString *) string
{
    [[object name] setString:string];
}

@end
