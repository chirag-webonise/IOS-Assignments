//
//  ContactCellTableViewCell.m
//  assignment_2
//
//  Created by Webonise on 14/08/14.
//  Copyright (c) 2014 iosTraining. All rights reserved.
//

#import "ContactCell.h"



@implementation ContactCell

@synthesize lableName;
@synthesize lableNumber;
@synthesize viewImage;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
