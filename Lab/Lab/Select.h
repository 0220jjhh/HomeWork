//
//  Select.h
//  Lab
//
//  Created by SWUComputer on 2016. 10. 22..
//  Copyright © 2016년 SWUComputer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Select : UIViewController
@property (strong, nonatomic) IBOutlet UISegmentedControl *shot;
@property (strong, nonatomic) IBOutlet UISegmentedControl *milk;
@property (strong, nonatomic) IBOutlet UISegmentedControl *syrup;
@property (strong, nonatomic) IBOutlet UILabel *name;

@property (assign, nonatomic) NSInteger shotSelected;
@property (assign, nonatomic) NSInteger milkSelected;
@property (assign, nonatomic) NSInteger syrupSelected;

- (IBAction)coffeeSelection:(UISegmentedControl *)sender;
- (IBAction)gotoInfo;
- (IBAction)gotoNo;

@end
