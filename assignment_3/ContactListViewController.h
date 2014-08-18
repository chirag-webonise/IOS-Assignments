
#import <UIKit/UIKit.h>
#import "ContactCell.h"

@interface ContactListViewController : UIViewController <UITableViewDelegate, UITableViewDataSource> {
    NSMutableArray * contacts;
    IBOutlet UITableView *tableViewContacts;
}


@property (strong,nonatomic) ContactCell * cell;

@end
