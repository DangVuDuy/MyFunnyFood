//
//  DetailAddress.m
//  MyFunnyFood
//
//  Created by Dang Vu Duy on 1/8/16.
//  Copyright © 2016 Dang Vu Duy. All rights reserved.
//

#import "DetailAddress.h"
#define size_zoom 1.5


@interface DetailAddress () <UIScrollViewDelegate, UIGestureRecognizerDelegate>
@property (weak, nonatomic) IBOutlet UILabel *lableAddress;
@property (weak, nonatomic) IBOutlet UILabel *labePhonelNumber;

@property (nonatomic, strong) UIImageView *photo;
@property (weak, nonatomic) UIScrollView *scrollView;


@end

@implementation DetailAddress

- (void)viewDidLoad {
    [super viewDidLoad];
    [self addDetailAddress];
    [self addMapToScrollView];
}

- (void) addDetailAddress {

    _labePhonelNumber.text = self.stringPhoneNumber;
    //NSLog(@"%@", self.stringAddress);
    _lableAddress.text = self.stringAddress;
    
    if ([self.stringTitleDetailAddress isEqualToString:@"Shop 1"]) {
        self.title = @"Shop 1";
    }else if ([self.stringTitleDetailAddress isEqualToString:@"Shop 2"])
        self.title = @"Shop 2";
}
- (void) addMapToScrollView {
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, self.labePhonelNumber.center.y + 30, self.view.bounds.size.width, self.view.bounds.size.height - self.labePhonelNumber.center.y - 30)];
    scrollView.delegate = self;
    scrollView.minimumZoomScale = 0.2;
    scrollView.maximumZoomScale = 4;
    scrollView.zoomScale = 1;
    scrollView.clipsToBounds = YES;
    
    
    self.photo = [[UIImageView alloc] initWithFrame:CGRectMake(0, self.scrollView.frame.origin.y, self.view.bounds.size.width, 250)];
    self.photo.image = [UIImage imageNamed:self.stringMap];
    self.photo.contentMode = UIViewContentModeScaleAspectFit;
    
    self.photo.userInteractionEnabled = YES;
    self.photo.multipleTouchEnabled = YES;
    
    UITapGestureRecognizer *singleTap = [[UITapGestureRecognizer alloc] initWithTarget:self
                                                                                action:@selector(onTap:)];
    singleTap.numberOfTapsRequired = 1;
    singleTap.delegate = self;
    
    [self.photo addGestureRecognizer:singleTap];
    
    
    UITapGestureRecognizer *doubleTap = [[UITapGestureRecognizer alloc] initWithTarget:self
                                                                                action:@selector(onDoubleTap:)];
    
    doubleTap.numberOfTapsRequired = 2;
    doubleTap.delegate = self;
    [self.photo addGestureRecognizer:doubleTap];
    
    [singleTap requireGestureRecognizerToFail:doubleTap];
    
    [scrollView addSubview:self.photo];
    [self.view addSubview:scrollView];
    self.scrollView = scrollView;
    
}

- (void) onTap: (UITapGestureRecognizer*) tap {
    
    CGPoint tapPoint = [tap locationInView:self.photo];
    
    float newScale = self.scrollView.zoomScale * size_zoom;
    
    [self zoomRectForScale:newScale
                withCenter:tapPoint];
}
- (void) onDoubleTap: (UITapGestureRecognizer*) tap {
    
    CGPoint tapPoint = [tap locationInView:self.photo];
    
    float newScale = self.scrollView.zoomScale / size_zoom;
    
    [self zoomRectForScale:newScale
                withCenter:tapPoint];
}
- (void) zoomRectForScale: (float) scale
               withCenter: (CGPoint) center {
    
    CGRect zoomRect;
    CGSize scrollViewSize = self.scrollView.bounds.size;
    
    zoomRect.size.width = scrollViewSize.width / scale;
    zoomRect.size.height = scrollViewSize.height / scale;
    zoomRect.origin.x = center.x - (zoomRect.size.width / 2);
    zoomRect.origin.y = center.y - (zoomRect.size.height / 2);
    
    [self.scrollView zoomToRect:zoomRect animated:YES];
}
- (UIView*) viewForZoomingInScrollView:(UIScrollView *)scrollView {
    
    return self.photo;
}






@end
