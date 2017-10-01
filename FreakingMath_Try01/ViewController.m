//
//  ViewController.m
//  FreakingMath_Try01
//
//  Created by admin on 10/1/17.
//  Copyright © 2017 admin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

{
    int so1; // Khai bao so thu nhat cho label 1
    int so2; // Khai bao so thu 2 cho label 2
    NSArray *arrPhepToan ; // Khai báo mảng chứa các phần tử cộng, trừ,
    NSArray *arrKetQuaCong; // Mảng chưa kết quả cộng
    NSArray *arrKetQuaTru;  // Mảng chứa kết quả trừ
}
@end

@implementation ViewController
/*
 @property (weak, nonatomic) IBOutlet UISlider *thoiGianSlider;
 
 @property (weak, nonatomic) IBOutlet UILabel *diemLabel;
 @property (weak, nonatomic) IBOutlet UILabel *soThu1Label;
 @property (weak, nonatomic) IBOutlet UILabel *phepToanLabel;
 @property (weak, nonatomic) IBOutlet UILabel *soThu2Label;
 @property (weak, nonatomic) IBOutlet UILabel *ketQuaLabel;
 
 
 
 - (IBAction)trueButtonAction:(id)sender;
 - (IBAction)falseButtonAction:(id)sender;
 
 */

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    // Lấy số ngẫu nhiên
    // Số thứ nhất lấy random từ 0 tới 19
    
    so1=arc4random()%20;
    
    // Số thứ 2 cũng lấy random từ 0 tới 19
    so2 =arc4random()%20;
    
    // Ngán vào soThu1Label một số ngẫu nhiên từ 0 tới 19
    //Set text for label
    [self.soThu1Label setText:[NSString stringWithFormat:@"%d",so1]];
    
    // Ngán vào soThu2Lablel một số ngẫu nhiên từ 0 tới 19
    //Set text for label
    [self.soThu2Label setText:[NSString stringWithFormat:@"%d",so2]];
    
    
    // Khởi tạo mảng chưa các phép toán
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




- (IBAction)trueButtonAction:(id)sender {
}

- (IBAction)falseButtonAction:(id)sender {
}
@end
