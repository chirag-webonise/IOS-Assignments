#import "ContactListViewController.h"
#import "Contact.h"
#import "ContactCell.h"
#import "DetailedContactViewController.h"

@interface ContactListViewController ()
{
    NSMutableDictionary * dictionaryContacts;
    NSMutableArray * contactSectionTitles;
}

@end

@implementation ContactListViewController

@synthesize cell;

- (void)viewDidLoad
{
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    [super viewDidLoad];
    
    Contact *contact1 = [[Contact alloc] init];
    contact1.contactName=@"Sachin Tendulkar";
    contact1.contactNumber=@"+91802574584";
    contact1.contactAddress=@"Mumbai";
    contact1.contactImage=[UIImage imageNamed: @"sachin.jpg"];
    
    Contact *contact3 = [[Contact alloc] init];
    contact3.contactName=@"Rahul Dravid";
    contact3.contactNumber=@"+919827252035";
    contact3.contactAddress=@"Banglore";
    contact3.contactImage=[UIImage imageNamed: @"rahul.jpg"];
    
    Contact *contact2 = [[Contact alloc] init];
    contact2.contactName=@"Sandeep Rathore";
    contact2.contactNumber=@"+918149325524";
    contact2.contactAddress=@"Pune";
    contact2.contactImage=[UIImage imageNamed: @"sr.jpg"];
    
    Contact *contact4 = [[Contact alloc] init];
    contact4.contactName=@"Taha Husain";
    contact4.contactNumber=@"+917744039407";
    contact4.contactAddress=@"Bhopal";
    contact4.contactImage=[UIImage imageNamed: @"taha.jpg"];
    
    Contact *contact5 = [[Contact alloc] init];
    contact5.contactName=@"Virat Kohli";
    contact5.contactNumber=@"+917744774455";
    contact5.contactAddress=@"Delhi";
    contact5.contactImage=[UIImage imageNamed: @"virat.jpg"];
    
    Contact *contact6 = [[Contact alloc] init];
    contact6.contactName=@"Murtaza Bagwala";
    contact6.contactNumber=@"+917744039407";
    contact6.contactAddress=@"Indore";
    contact6.contactImage=[UIImage imageNamed: @"murtaza.jpg"];
    
    
    Contact *contact7 = [[Contact alloc] init];
    contact7.contactName=@"Bear Grylls";
    contact7.contactNumber=@"+11895648142";
    contact7.contactAddress=@"Alaska";
    contact7.contactImage=[UIImage imageNamed: @"bear.jpg"];
    
    Contact *contact8 = [[Contact alloc] init];
    contact8.contactName=@"Steve Jobs";
    contact8.contactNumber=@"+11894541244";
    contact8.contactAddress=@"Washington D.C";
    contact8.contactImage=[UIImage imageNamed: @"steve.jpg"];
    
    Contact *contact9 = [[Contact alloc] init];
    contact9.contactName=@"Amir Khan";
    contact9.contactNumber=@"+91822574152";
    contact9.contactAddress=@"Mumbai";
    contact9.contactImage=[UIImage imageNamed: @"amir.jpg"];
    
    Contact *contact10 = [[Contact alloc] init];
    contact10.contactName=@"Amitabh Bachchan";
    contact10.contactNumber=@"+91894541244";
    contact10.contactAddress=@"Mumbai";
    contact10.contactImage=[UIImage imageNamed: @"amitabh.jpg"];
    
    contacts = [[NSMutableArray alloc] initWithObjects:contact7,contact8,contact2,contact1,contact3,contact4,contact5,contact6,contact10,contact9, nil];
    
    dictionaryContacts = [[NSMutableDictionary alloc] init];
    
    for (int i=0; i<[contacts count]; i++)
    {
        
        NSString * key = [[[contacts objectAtIndex:i] contactName] substringToIndex:1];
        
        NSString *tempStr = [[@"contactName BEGINSWITH[c] '" stringByAppendingString:key] stringByAppendingString:@"'"];
        
        NSPredicate *predicate = [NSPredicate predicateWithFormat:tempStr];
        
        NSArray * valuesForKey =[[NSArray alloc] initWithArray:(NSArray*)[contacts filteredArrayUsingPredicate:predicate]];
        
        NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:@"contactName" ascending:YES];
        
        NSArray *sortDescriptors = [NSArray arrayWithObject:sortDescriptor];
        
        NSArray *sortedArray = [valuesForKey sortedArrayUsingDescriptors:sortDescriptors];
        
        [dictionaryContacts setObject:sortedArray forKey:key];
    }
    
    contactSectionTitles = (NSMutableArray *)[[dictionaryContacts allKeys] sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
    
    
}

-(void)viewWillAppear:(BOOL)animated
{
    [tableViewContacts reloadData];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return [contactSectionTitles count];
}

-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView *sectionView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, tableView.frame.size.width, 20)];
    UILabel *labelSectionTitle = [[UILabel alloc] initWithFrame:CGRectMake(10, 0, tableView.frame.size.width, 20)];
    [labelSectionTitle setFont:[UIFont boldSystemFontOfSize:18]];
    NSString *string =[contactSectionTitles objectAtIndex:section];
    labelSectionTitle.textColor=[UIColor colorWithRed:70.0f/255.0f green:200.0f/255.0f blue:200.0f/255.0f alpha:1.0f];
    [labelSectionTitle setText:string];
    [sectionView addSubview:labelSectionTitle];
    return sectionView;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    NSString *sectionTitle = [contactSectionTitles objectAtIndex:section];
    NSArray *sectionContact = [dictionaryContacts objectForKey:sectionTitle];
    return [sectionContact count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    cell = (ContactCell *)[tableViewContacts dequeueReusableCellWithIdentifier:@"contactCell" forIndexPath:indexPath];
    NSString *sectionTitle = [contactSectionTitles objectAtIndex:indexPath.section];
    NSArray *sectionContact = [dictionaryContacts objectForKey:sectionTitle];
    
    cell.viewImage.layer.cornerRadius = cell.viewImage.frame.size.height /2;
    cell.viewImage.layer.masksToBounds = YES;
    cell.viewImage.layer.borderWidth = 0;
    
    Contact * temp = [sectionContact objectAtIndex:indexPath.row];
    cell.lableName.text = temp.contactName;
    cell.lableNumber.text= temp.contactNumber;
    [cell.viewImage setImage:temp.contactImage];
    
    cell.accessoryView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"favicon.ico"]];
    
    NSLog(@"row: %lu", (unsigned long)indexPath.row);
    
    if (indexPath.row%2 == 0)
    {

        [cell setBackgroundColor:[UIColor colorWithRed:70.0f/255.0f green:200.0f/255.0f blue:200.0f/255.0f alpha:1.0f]];
    }
    return cell;
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    NSIndexPath * selectedIndexPath = [self->tableViewContacts indexPathForSelectedRow];
    
    NSString *sectionTitle = [contactSectionTitles objectAtIndex:selectedIndexPath.section];
    NSArray *sectionContact = [dictionaryContacts objectForKey:sectionTitle];
    
    Contact * temp = [sectionContact objectAtIndex:selectedIndexPath.row];
    
    DetailedContactViewController *dest = [segue destinationViewController];
    dest.setName=temp.contactName;
    dest.setNumber=temp.contactNumber;
    dest.setImage=temp.contactImage;
    dest.setAddrerss=temp.contactAddress;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection: (NSInteger)section
{
    return 20.0f;
}

@end