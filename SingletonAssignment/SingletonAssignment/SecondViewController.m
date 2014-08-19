#import "SecondViewController.h"
#import "SingletonClass.h"

@interface SecondViewController ()

@property SingletonClass * object;

@end

@implementation SecondViewController
@synthesize lableSecond;
@synthesize textSecond;
@synthesize object;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    object = [[SingletonClass alloc] init];
    self.lableSecond.text = [object name];
}

-(IBAction)changeText
{
    [object changeString:textSecond.text];
    lableSecond.text = [object name];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
