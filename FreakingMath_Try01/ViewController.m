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
    NSString *phepToan;
    NSArray *arrPhepToan ; // Khai báo mảng chứa các phần tử cộng, trừ,
    NSArray *arrKetQuaCong; // Mảng chưa kết quả cộng
    NSArray *arrKetQuaTru;  // Mảng chứa kết quả trừ
    int ketQua;
    int diem;
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
    [self ngauNhien];
}

// Tạo một hàm ngẫu nhiên/
-(void)ngauNhien
{

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
    
    //*********************************
    // 02 Oct
    // Khởi tạo mảng chưa các phép toán
    // Mảng chứa hai phép toán cộng và trừ
      arrPhepToan=[[NSArray alloc] initWithObjects:@"+",@"-", nil];
    /*
     
     arrPhepToan=[[NSArray alloc] initWithObjects:@"+",@"-", nil];
    
       - Phải tạo ra mảng chứa các phần tử cộng, trừ trước
     
     */
    
    
    
      phepToan =[arrPhepToan objectAtIndex:arc4random()%2];
    /*
     phepToan =[arrPhepToan objectAtIndex:arc4random()%2];
     - Phép toán lấy ngẫu nhiên một trong hai phép toán cộng hoặc trứ

     */
    
       [self.phepToanLabel setText:phepToan];
    /*
      [self.phepToanLabel setText:phepToan];
     ==> Gọi và gán cho phepToanLable ngẫu nhiên phép toán cộng hoặc trừ
     
     */
    
    // Xử lý phần kết quả
    // Khởi tao mảng chứa kết quá
    // Kết quả cộng
   arrKetQuaCong=[[NSArray alloc] initWithObjects:
                   [NSString stringWithFormat:@"%d",(so1+so2)],
                   [NSString stringWithFormat:@"%d",(so1+so2)+1],
                   [NSString stringWithFormat:@"%d",(so1+so2)],
                   [NSString stringWithFormat:@"%d",(so1+so2)-1],
                   [NSString stringWithFormat:@"%d",(so1+so2)],
                   [NSString stringWithFormat:@"%d",(so1+so2)+2],
                   [NSString stringWithFormat:@"%d",(so1+so2)],
                   [NSString stringWithFormat:@"%d",(so1+so2)-2],
                   nil];
    
    /* Tạo ra mảng kết quả cộng có các thành  phần từ như trên
     Xác suất để có một kết quả đúng là 1/5 tức là 20%
     ==> Chúng ta có thể tạo ra khả năng đungs ít hơn bằng cách thêm các phần từ vào mảng
     + Mỗi một cái sai thì có 1 các đúng. Gọi là đồng khả năng
    */
    //Kết quả trừ
    
    //  Tương tự như kết quả trừ cũng vậy
    arrKetQuaTru=[[NSArray alloc] initWithObjects:
                   [NSString stringWithFormat:@"%d",(so1-so2)],
                   [NSString stringWithFormat:@"%d",(so1-so2)+1],
                   [NSString stringWithFormat:@"%d",(so1-so2)],
                   [NSString stringWithFormat:@"%d",(so1-so2)-1],
                   [NSString stringWithFormat:@"%d",(so1-so2)],
                   [NSString stringWithFormat:@"%d",(so1-so2)+2],
                   [NSString stringWithFormat:@"%d",(so1-so2)],
                   [NSString stringWithFormat:@"%d",(so1-so2)-2],
                   nil];
   // Gán kêts quá bằng cách ngầu nhiên giống như với phép toán
    if([phepToan isEqual:@"+"]){
        
        ketQua=[[arrKetQuaCong  objectAtIndex:arc4random()%(arrKetQuaCong.count)]intValue];
    [self.ketQuaLabel setText:[NSString stringWithFormat:@"%d", ketQua]];
    }else{
        ketQua=[[arrKetQuaTru objectAtIndex:arc4random()%(arrKetQuaTru.count)] intValue];
        [self.ketQuaLabel setText:[NSString stringWithFormat:@"%d",ketQua]];
    }
}


//03102017
// Xử lý button
// Nếu đúng thì chuyển màn cho chơi tiếp
// Nếu sai thì dừng game


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




- (IBAction)trueButtonAction:(id)sender {
    if([phepToan isEqual:@"+"]){
        if((so1+so2)==[self.ketQuaLabel.text intValue])
        {
            // Nguoi choi lam dung.
            // Cho phep chuyen phep toan tiep theo.
            // Goi ham ngauNhien
            [self ngauNhien];
            
        }else{
            //-Nguoi choi chon sai.
            //-Dung game.
            NSLog(@"Game over");
        }
    }else{
        if((so1-so2)==[self.phepToanLabel.text intValue])
        {
             //-Nguoi choi lam dung.
            //- Cho phep nguoi choi chuyen sang phep toan tiep theo.
            // Goi ham ngau nhien
            [self ngauNhien] ;
            diem++;
            [self.diemLabel setText:[NSString stringWithFormat:@"%d",diem]];
        }else{
            // - Nguoi choi chon sai.
            // - Dung game.
            NSLog(@"Game over");
        }
    }
    }

- (IBAction)falseButtonAction:(id)sender {
    
    if([phepToan isEqual:@"+"]){
        if((so1+so2)!=[self.ketQuaLabel.text intValue])
        {
            // Nguoi choi lam dung.
            // Cho phep chuyen phep toan tiep theo.
            // Goi ham ngauNhien
            [self ngauNhien];
            diem++;
            [self.diemLabel setText:[NSString stringWithFormat:@"%d",diem]];
            
        }else{
            //-Nguoi choi chon sai.
            //-Dung game.
            NSLog(@"Game over");
        }
    }else{
        if((so1-so2)!=[self.phepToanLabel.text intValue])
        {
            //-Nguoi choi lam dung.
            //- Cho phep nguoi choi chuyen sang phep toan tiep theo.
            // Goi ham ngau nhien
            [self ngauNhien] ;
        }else{
            // - Nguoi choi chon sai.
            // - Dung game.
            NSLog(@"Game over");
        }
    }
}
@end
