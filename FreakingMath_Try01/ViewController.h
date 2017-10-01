//
//  ViewController.h
//  FreakingMath_Try01
//
//  Created by admin on 10/1/17.
//  Copyright © 2017 admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UISlider *thoiGianSlider;

@property (weak, nonatomic) IBOutlet UILabel *diemLabel;
@property (weak, nonatomic) IBOutlet UILabel *soThu1Label;
@property (weak, nonatomic) IBOutlet UILabel *phepToanLabel;
@property (weak, nonatomic) IBOutlet UILabel *soThu2Label;
@property (weak, nonatomic) IBOutlet UILabel *ketQuaLabel;



- (IBAction)trueButtonAction:(id)sender;
- (IBAction)falseButtonAction:(id)sender;


@end

