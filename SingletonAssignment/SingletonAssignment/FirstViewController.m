
#import "FirstViewController.h"
#import "SingletonClass.h"

@interface FirstViewController ()

@end

@implementation FirstViewController
@synthesize lableFirst;
@synthesize textFirst;

- (void)viewDidLoad
{
    [super viewDidLoad];
    [lableFirst setText:[[SingletonClass theObject] name]];
}

-(IBAction)changeText
{
    [[SingletonClass theObject] changeString:textFirst.text];
    lableFirst.text = [[SingletonClass theObject]name];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
