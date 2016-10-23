//
//  Select.m
//  Lab
//
//  Created by SWUComputer on 2016. 10. 22..
//  Copyright © 2016년 SWUComputer. All rights reserved.
//

#import "Select.h"
#import "Info.h"
#import "IDontNo.h"

@interface Select ()

@end

@implementation Select

@synthesize shot, milk, syrup, name;
@synthesize shotSelected, milkSelected, syrupSelected;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)coffeeSelection:(UISegmentedControl *)sender {
    shotSelected = [shot selectedSegmentIndex];
    milkSelected = [milk selectedSegmentIndex];
    syrupSelected = [syrup selectedSegmentIndex];
    if(shotSelected==1 && syrupSelected ==0){
        if(milkSelected==0) self.name.text = @"에스프레소";
        else if(milkSelected == 1) self.name.text = @"아메리카노";
        else if(milkSelected == 2) self.name.text = @"카페라떼";
        else if(milkSelected == 3) self.name.text = @"카푸치노"; }
    else if(shotSelected==1 && milkSelected ==2) {
        if(syrupSelected==1) self.name.text = @"카라멜마키아또";
        else if(syrupSelected==2) self.name.text = @"바닐라라떼";
        else if(syrupSelected==3) self.name.text = @"카페모카";
    }
    else self.name.text = @"다른 조합을 해보세요! \n 잘 모르겠으면 모르겠어요 버튼을 눌러주세요~";
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString:@"completeToInfo"]){
        Info *info = [segue destinationViewController];
        info.coffee = self.name.text;
    }
}

- (IBAction)gotoInfo {
}

- (IBAction)gotoNo {
}
@end
