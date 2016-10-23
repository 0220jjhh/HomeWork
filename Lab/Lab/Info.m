//
//  Info.m
//  Lab
//
//  Created by SWUComputer on 2016. 10. 22..
//  Copyright © 2016년 SWUComputer. All rights reserved.
//

#import "Info.h"

@interface Info ()

@end

@implementation Info

@synthesize coffeeName, coffee, priceView, starPrice, cbPrice, angelPrice;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.priceView setHidden:YES];
    coffeeName.text = coffee;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)priceShow {
    [self.priceView setHidden:NO];
    if([coffee isEqual:@"에스프레소"]) {
        starPrice.text = @"3,600원";
        cbPrice.text=@"Tall : 3,100원 \nGrande : 3,600원";
        angelPrice.text=@"3,900원";
    }
    else if([coffee isEqual:@"아메리카노"]){
        starPrice.text = @"Tall : 4,100원 \nGrande : 4,600원 \nVenti : 5,100원";
        cbPrice.text = @"Tall : 3,800원 \nGrande : 4,300원 \nVenti : 5,100원";
        angelPrice.text = @"regular : 4,900원";
    }
    else if([coffee isEqual:@"카페라떼"]){
        starPrice.text = @"Tall : 4,600원 \nGrande : 5,100원 \nVenti : 5,600원";
        cbPrice.text = @"Tall : 4,200원 \nGrande : 4,700원 \nVenti : 5,400원";
        angelPrice.text = @"small : 4,600원 \nregular : 5,100원 \nlarge : 5,600원";
    }
    else if([coffee isEqual:@"카푸치노"]){
        starPrice.text = @"Tall : 4,600원 \nGrande : 5,100원 \nVenti : 5,600원";
        cbPrice.text = @"Tall : 4,200원 \nGrande : 4,700원 \nVenti : 5,400원";
        angelPrice.text = @"small : 4,600원 \nregular : 5,100원";
    }
    else if([coffee isEqual:@"카페모카"]){
        starPrice.text = @"Tall : 5,100원 \nGrande : 5,600원 \nVenti : 6,100원";
        cbPrice.text = @"Tall : 4,800원 \nGrande : 5,300원 \nVenti : 6,000원";
        angelPrice.text = @"small : 5,200원 \nregular : 5,700원 \nlarge : 6,200원";
    }
    else if([coffee isEqual:@"카라멜마키아또"]){
        starPrice.text = @"Tall : 5,600원 \nGrande : 6,100원 \nVenti : 6,100원";
        cbPrice.text = @"Tall : 4,600원 \nGrande : 5,100원 \nVenti : 5,800원";
        angelPrice.text = @"small : 5,700원 \nregular : 6,200원 \nlarge : 6,700원";
    }
    else if([coffee isEqual:@"바닐라라떼"]){
        starPrice.text = @"Tall : 5,200원 \nGrande : 5,700원 \nVenti : 6,200원";
        cbPrice.text = @"Tall : 4,600원 \nGrande : 5,100원 \nVenti : 5,800원";
        angelPrice.text = @"small : 5,300원 \nregular : 5,800원";
    }
}

@end
