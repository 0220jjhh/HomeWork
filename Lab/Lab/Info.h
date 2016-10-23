//
//  Info.h
//  Lab
//
//  Created by SWUComputer on 2016. 10. 22..
//  Copyright © 2016년 SWUComputer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Info : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *coffeeName;
@property (strong, nonatomic) NSString *coffee;

- (IBAction)priceShow;


@property (strong, nonatomic) IBOutlet UIView *priceView;

@property (strong, nonatomic) IBOutlet UILabel *starPrice;
@property (strong, nonatomic) IBOutlet UILabel *cbPrice;
@property (strong, nonatomic) IBOutlet UILabel *angelPrice;


@end
