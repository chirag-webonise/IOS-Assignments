
#import <UIKit/UIKit.h>

@interface DetailedContactViewController : UIViewController
{
}

@property (weak, nonatomic) IBOutlet UIImageView * viewImage;
@property (weak, nonatomic) IBOutlet UILabel * lableName;
@property (weak, nonatomic) IBOutlet UILabel * lableNumber;
@property (weak, nonatomic) IBOutlet UILabel * lableAddress;

@property (nonatomic, strong) NSString *setName;
@property (nonatomic, strong) NSString *setNumber;
@property (nonatomic, strong) NSString *setAddrerss;
@property (nonatomic, strong) UIImage *setImage;


@end
