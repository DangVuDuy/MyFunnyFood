//
//  AboutScreen.m
//  MyFunnyFood
//
//  Created by Dang Vu Duy on 1/5/16.
//  Copyright © 2016 Dang Vu Duy. All rights reserved.
//

#import "AboutScreen.h"

@interface AboutScreen ()<UITextViewDelegate>
@property(nonatomic, strong) UITextView *textView;

@end

@implementation AboutScreen
    NSTimer *autoscrollTimer;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.textView.delegate = self;
    UIImageView *backGround = [[UIImageView alloc] initWithFrame:self.view.bounds];
    backGround.image = [UIImage imageNamed:@"backGroundBlack.jpg"];
    [self.view addSubview:backGround];
    [self addTextView];
    [self autoscrollTextView];
    [self.textView setEditable:NO];


    
}
// To disable editing in UITextField you need to return NO in delegate method textFieldShouldBeginEditing:
- (BOOL)textViewShouldBeginEditing:(UITextView *)textView {
    return NO;
}


- (void) addTextView {
    
    self.textView = [[UITextView alloc] initWithFrame:CGRectMake(20, 150, self.view.bounds.size.width -40,self.view.bounds.size.height - 300)];
    self.textView.text = @"\n\n\n\n\n   Nhà hàng bánh ngọt Funny Food  khai trương ngày 20 tháng 10 vừa qua hứa hẹn trở thành một điểm đến lý thú cho những ai yêu thích văn hóa ẩm thực Pháp.\n\n   Đến với Funny Food thực khách không chỉ được thưởng thức các món bánh với hương vị Pháp tuyệt hảo mà còn được tận mắt chứng kiến không gian thưởng thức mang đậm phong cách của nước Pháp hoa lệ và trang nhã.\n\n    Funny Food có đủ chủng loại bánh Gato, bánh mì, bánh bỏ lò, pizza, café, fastfood… do các chuyên gia đến từ Pháp đảm nhiệm chế biến.";
    
    self.textView.backgroundColor = [UIColor clearColor];
    self.textView.textColor = [UIColor whiteColor];
    self.textView.font = [UIFont fontWithName:@"Helvetica" size:17];
    [self.view addSubview:self.textView];
}
- (void)autoscrollTextView
{
    CGPoint scrollPoint = self.textView.contentOffset;
    //NSLog(@"%@", NSStringFromCGPoint(scrollPoint));
    scrollPoint = CGPointMake(scrollPoint.x, scrollPoint.y + 1);
    if (scrollPoint.y > 400) {
        scrollPoint.y = -300;
    }
    [self.textView setContentOffset:scrollPoint animated:NO];
    
    if (autoscrollTimer == nil) {
        autoscrollTimer = [NSTimer scheduledTimerWithTimeInterval:(60.0/1000.0)
                                                           target:self
                                                         selector:@selector(autoscrollTextView)
                                                         userInfo:nil
                                                          repeats:YES];
    }
}



@end
