
#import "SecondViewController.h"
#import "ContactListViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

-(IBAction)viewContact
{
    UIStoryboard * obj = [UIStoryboard storyboardWithName:@"ContactStoryboard" bundle:nil];
    
    UINavigationController * nav = (UINavigationController*)[obj instantiateInitialViewController];
    
    ContactListViewController *contactView = (ContactListViewController *)[nav.viewControllers objectAtIndex:0];
    
    [self.navigationController pushViewController:contactView animated:YES];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
