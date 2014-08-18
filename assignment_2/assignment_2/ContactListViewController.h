//
//  ContactListTableViewController.h
//  assignment_2
//
//  Created by Webonise on 14/08/14.
//  Copyright (c) 2014 iosTraining. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ContactCell.h"

@interface ContactListViewController : UIViewController <UITableViewDelegate, UITableViewDataSource> {
    NSMutableArray * contacts;
    IBOutlet UITableView *tableViewContacts;
}


@property (strong,nonatomic) ContactCell * cell;

@end
