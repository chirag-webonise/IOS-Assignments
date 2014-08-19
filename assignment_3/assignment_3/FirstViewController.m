
#import "FirstViewController.h"
#import "ContactCollectionCell.h"


@interface FirstViewController ()
{
    NSArray * contactImages;
}

@end

@implementation FirstViewController
@synthesize contactCollection=_contactCollection;

- (void)viewDidLoad
{
    contactImages = @[ @"murtaza.jpg",@"sachin.jpg",@"sr.jpg",@"rahul.jpg",@"taha.jpg",@"virat.jpg",@"bear.jpg",@"steve.jpg",@"amitabh.jpg",@"amir.jpg"];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)collectionView :(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [contactImages count];
}

- (NSInteger)numberOfSectionsInCollectionView :(UICollectionView *)collectionView
{
    // Return the number of sections.
    return 1;
}


-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    
    ContactCollectionCell *cell = (ContactCollectionCell *)[collectionView dequeueReusableCellWithReuseIdentifier:@"collectionCell" forIndexPath:indexPath];
    NSRange range = [[contactImages objectAtIndex:indexPath.row] rangeOfString:@"."];
    cell.lableName.text = [[contactImages objectAtIndex:indexPath.row] substringToIndex:range.location];
    [cell.imageContact setImage:[UIImage imageNamed: [contactImages objectAtIndex:indexPath.row]]];
    
    return cell;
    
}

-(IBAction)goToContacts
{
    self.tabBarController.selectedViewController = [self.tabBarController.viewControllers objectAtIndex:1];
}


@end
