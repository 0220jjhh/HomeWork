//
//  IDontNo.m
//  Lab
//
//  Created by SWUComputer on 2016. 10. 22..
//  Copyright © 2016년 SWUComputer. All rights reserved.
//

#import "IDontNo.h"
#import "Info.h"

@interface IDontNo ()

@end

@implementation IDontNo

@synthesize picker, viewHidden, coffeeName;

- (void)viewDidLoad {
    [super viewDidLoad];
    data = [[NSArray alloc] initWithObjects:@"에스프레소", @"아메리카노", @"카페라떼", @"카푸치노", @"카페모카", @"카라멜마키아또", @"바닐라라떼", nil];
    [self.viewHidden setHidden:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)select {
    [self.viewHidden setHidden:NO];
    NSString *cof = [data objectAtIndex:[self.picker selectedRowInComponent:0]];
    if([cof isEqual:@"에스프레소"]) coffeeName.text = [cof stringByAppendingString:@" \n 샷 + 다른것 모두 X"];
    else if([cof isEqual:@"아메리카노"]) coffeeName.text = [cof stringByAppendingString:@" \n 샷 + 물"];
    else if([cof isEqual:@"카페라떼"]) coffeeName.text = [cof stringByAppendingString:@" \n 샷 + 우유"];
    else if([cof isEqual:@"카푸치노"]) coffeeName.text = [cof stringByAppendingString:@" \n 샷 + 우유거품"];
    else if([cof isEqual:@"카페모카"]) coffeeName.text = [cof stringByAppendingString:@" \n 샷 + 우유 + 초코시럽"];
    else if([cof isEqual:@"카라멜마키아또"]) coffeeName.text = [cof stringByAppendingString:@" \n 샷 + 우유 + 캬라멜 시럽"];
    else if([cof isEqual:@"바닐라라떼"]) coffeeName.text = [cof stringByAppendingString:@" \n 샷 + 우유 + 바닐라 시럽"];
}
- (IBAction)gotoInfo {
}

- (NSInteger) numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}

- (NSInteger) pickerView:(UIPickerView *)pickerView
 numberOfRowsInComponent:(NSInteger)component {
    return [data count];
}

- (NSString *) pickerView:(UIPickerView *)pickerView
              titleForRow:(NSInteger)row  forComponent:(NSInteger)component {
    return [data objectAtIndex:row];
}


- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    NSString *cof = [data objectAtIndex:[self.picker selectedRowInComponent:0]];
    if([segue.identifier isEqualToString:@"gotoInfo"]){
        Info *info = [segue destinationViewController];
        info.coffee = cof;
    }
}

@end
