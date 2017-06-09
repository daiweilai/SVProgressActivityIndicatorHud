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
    [SVProgressHUD setDefaultStyle:SVProgressHUDStyleDark];
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
        [SVProgressHUD setActivityIndicatorType:_currentType tintColor:[UIColor whiteColor]];
    }else{
        [SVProgressHUD unsetActivityIndicator];
    }
}

- (IBAction)random:(id)sender {
    if (!_settingButton.isSelected) {
        [_settingButton setSelected:YES];
    }
    _currentType = arc4random()%32;
    [SVProgressHUD setActivityIndicatorType:_currentType tintColor:[UIColor whiteColor]];
}
@end
