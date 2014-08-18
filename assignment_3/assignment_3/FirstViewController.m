
#import "FirstViewController.h"
#import "ContactCollectionCell.h"


@interface FirstViewController ()
{
    
}

@end

@implementation FirstViewController
@synthesize contactCollection;

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

- (NSInteger)collectionView :(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return 1;
}

- (NSInteger)numberOfSectionsInCollectionView :(UICollectionView *)collectionView
{
    // Return the number of sections.
    return 1;
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    ContactCollectionCell *cell = (ContactCollectionCell *)[collectionView dequeueReusableCellWithReuseIdentifier:@"collectionCell" forIndexPath:indexPath];
    
    
    
    return cell;
}





@end
