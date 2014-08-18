//
//  ContactCellTableViewCell.h
//  assignment_2
//
//  Created by Webonise on 14/08/14.
//  Copyright (c) 2014 iosTraining. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ContactCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView * viewImage;
@property (weak, nonatomic) IBOutlet UILabel * lableName;
@property (weak, nonatomic) IBOutlet UILabel * lableNumber;

@end
