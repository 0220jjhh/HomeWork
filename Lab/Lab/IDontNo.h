//
//  IDontNo.h
//  Lab
//
//  Created by SWUComputer on 2016. 10. 22..
//  Copyright © 2016년 SWUComputer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface IDontNo : UIViewController
<UIPickerViewDelegate, UIPickerViewDataSource> {
    NSArray *data;
}

@property (strong, nonatomic) IBOutlet UIPickerView *picker;
@property (strong, nonatomic) IBOutlet UIView *viewHidden;
@property (strong, nonatomic) IBOutlet UILabel *coffeeName;

- (IBAction)select;
- (IBAction)gotoInfo;


@end
