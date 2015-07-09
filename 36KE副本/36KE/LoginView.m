//
//  LoginView.m
//  36KE
//
//  Created by lanou3g on 15/7/8.
//  Copyright (c) 2015年 蓝鸥科技. All rights reserved.
//

#import "LoginView.h"

@implementation LoginView

#pragma mark - 自定义方法
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self addAllViews];
    }
    return self;
}

#pragma mark  添加所以控件
- (void)addAllViews
{
    self.view = [[UITableView alloc] initWithFrame:self.frame style:UITableViewStyleGrouped];
    [self addSubview:_view];
    
    self.phoneTextField = [[UITextField alloc] initWithFrame:CGRectMake(10, 85, self.frame.size.width - 20, 30)];
    _phoneTextField.borderStyle = UITextBorderStyleRoundedRect;
    _phoneTextField.placeholder = @"手机号";
    [self addSubview:_phoneTextField];
    
    self.YZTextField = [[UITextField alloc] initWithFrame:CGRectMake(10, 125, (self.frame.size.width - 25) / 2, 30)];
    _YZTextField.borderStyle = UITextBorderStyleRoundedRect;
    _YZTextField.placeholder = @"验证码";
    [self addSubview:_YZTextField];
    
    self.YZButton = [UIButton buttonWithType:UIButtonTypeSystem];
    _YZButton.frame = CGRectMake(self.frame.size.width / 2 + 10, 125, (self.frame.size.width - 40) / 2, 30);
    [_YZButton setTitle:@"获取验证码" forState:UIControlStateNormal];
    [_YZButton.layer setCornerRadius:4.0];
    [_YZButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    _YZButton.backgroundColor = [UIColor colorWithRed:0.121 green:0.447 blue:1.000 alpha:1.000];
    [self addSubview:_YZButton];
    
    self.loginButton = [UIButton buttonWithType:UIButtonTypeSystem];
    _loginButton.frame = CGRectMake(10, 170, self.frame.size.width - 20, 30);
    [_loginButton setTitle:@"登陆" forState:UIControlStateNormal];
    [_loginButton.layer setCornerRadius:4.0];
    [_loginButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    _loginButton.backgroundColor = [UIColor colorWithRed:0.121 green:0.447 blue:1.000 alpha:1.000];
    [self addSubview:_loginButton];
    
    self.WXButton = [UIButton buttonWithType:UIButtonTypeSystem];
    _WXButton.frame = CGRectMake(100, 400, 30, 30);
    [_WXButton setTitle:@"微信" forState:UIControlStateNormal];
    [_WXButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    _WXButton.backgroundColor = [UIColor colorWithRed:0.121 green:0.447 blue:1.000 alpha:1.000];
        _WXButton.layer.masksToBounds = YES;
    _WXButton.layer.cornerRadius = _WXButton.frame.size.width / 2;
    [self addSubview:_WXButton];
    
    self.WBButton = [UIButton buttonWithType:UIButtonTypeSystem];
    _WBButton.frame = CGRectMake(180, 400, 30, 30);
    [_WBButton setTitle:@"微博" forState:UIControlStateNormal];
    [_WBButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    _WBButton.backgroundColor = [UIColor colorWithRed:0.121 green:0.447 blue:1.000 alpha:1.000];
   
    _WBButton.layer.masksToBounds = YES;
    _WBButton.layer.cornerRadius = _WXButton.frame.size.width / 2;
    [self addSubview:_WBButton];
    
    self.QQButton = [UIButton buttonWithType:UIButtonTypeSystem];
    _QQButton.frame = CGRectMake(260, 400, 30, 30);
    [_QQButton setTitle:@"QQ" forState:UIControlStateNormal];
    [_QQButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    _QQButton.backgroundColor = [UIColor colorWithRed:0.121 green:0.447 blue:1.000 alpha:1.000];

    _QQButton.layer.masksToBounds = YES;
    _QQButton.layer.cornerRadius = _WXButton.frame.size.width / 2;
    [self addSubview:_QQButton];
    

}

@end
