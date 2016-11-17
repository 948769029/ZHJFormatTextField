//
//  ViewController.m
//  ZHJFormatTextField
//
//  Created by apple on 2016/11/17.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "ViewController.h"
#import "HJBankCardTF.h"
#import "HJPhoneTF.h"
#import "HJMoneyTF.h"
#import "HJNumberTF.h"
#import "UITextField+Extension.h"

@interface ViewController ()<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet HJBankCardTF *bankTF;
@property (weak, nonatomic) IBOutlet HJPhoneTF *phoneTF;
@property (weak, nonatomic) IBOutlet HJMoneyTF *moneyTF;
@property (weak, nonatomic) IBOutlet HJNumberTF *numberTF;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.bankTF.delegate = self;
    self.phoneTF.delegate = self;
    self.moneyTF.delegate = self;
    self.numberTF.delegate = self;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    [textField valueChangeValueString:string shouldChangeCharactersInRange:range];
    
    
    return NO;
    
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    NSLog(@"%s",__func__);
}


@end
