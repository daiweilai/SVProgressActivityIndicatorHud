//
//  ViewController.m
//  SVProgressActivityIndicatorHud
//
//  Created by DavidDay on 2017/6/6.
//  Copyright © 2017年 DavidDay. All rights reserved.
//

#import "ViewController.h"
#import "SVProgressHUD+DGActivityIndicatorView.h"

@interface ViewController ()
@property(nonatomic,assign)DDActivityIndicatorAnimationType currentType;
@property (weak, nonatomic) IBOutlet UIButton *settingButton;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [SVProgressHUD setDefaultStyle:SVProgressHUDStyleLight];
}

- (IBAction)styleChange:(UISegmentedControl *)sender {
    void(^changeStyle)(void) = ^{
        if (sender.selectedSegmentIndex == 0) {
            [SVProgressHUD setDefaultStyle:SVProgressHUDStyleLight];
        }else if (sender.selectedSegmentIndex == 1){
            [SVProgressHUD setDefaultStyle:SVProgressHUDStyleDark];
        }else{
            [SVProgressHUD setDefaultStyle:SVProgressHUDStyleCustom];
        }
    };
    if ([SVProgressHUD isVisible]) {
        [SVProgressHUD dismissWithCompletion:^{
            changeStyle();
        }];
    }else{
        changeStyle();
    }
}

- (IBAction)show:(UIButton *)sender {
    [SVProgressHUD show];
}

- (IBAction)dismiss:(UIButton *)sender {
    [SVProgressHUD dismiss];
}

- (IBAction)setting:(UIButton *)sender {
    sender.selected = !sender.selected;
    if (sender.isSelected) {
        [SVProgressHUD setActivityIndicatorType:_currentType];
    }else{
        [SVProgressHUD unsetActivityIndicator];
    }
}

- (IBAction)random:(id)sender {
    if (!_settingButton.isSelected) {
        [_settingButton setSelected:YES];
    }
    _currentType = arc4random()%32;
    [SVProgressHUD setActivityIndicatorType:_currentType];
    CGFloat hue = ( arc4random() % 256 / 256.0 );  //  0.0 to 1.0
    CGFloat saturation = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from white
    CGFloat brightness = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from black
    [SVProgressHUD setActivityIndicatorTintColor:[UIColor colorWithHue:hue saturation:saturation brightness:brightness alpha:1]];
}
@end
