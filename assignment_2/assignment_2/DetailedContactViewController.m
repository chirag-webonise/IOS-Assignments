
#import "DetailedContactViewController.h"

@interface DetailedContactViewController ()

@end

@implementation DetailedContactViewController

@synthesize setName,setImage,setNumber,setAddrerss;

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
    
    self.lableName.text = self.setName;
    self.lableNumber.text = self.setNumber;
    self.lableAddress.text = self.setAddrerss;
    [self.viewImage setImage:self.setImage];
    
    UIColor *altCellColor = [UIColor colorWithRed:70.0f/255.0f green:200.0f/255.0f blue:200.0f/255.0f alpha:1.0f];
    self.view.backgroundColor = altCellColor;
    // Do any additional setup after loading the view.
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
