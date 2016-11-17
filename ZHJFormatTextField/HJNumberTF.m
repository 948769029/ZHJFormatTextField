//
//  HJNumberTF.m
//  ZHJFormatTextField
//
//  Created by apple on 2016/11/17.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "HJNumberTF.h"

@implementation HJNumberTF

- (BOOL)valueChangeValueString:(NSString *)string shouldChangeCharactersInRange:(NSRange)range
{
    NSLog(@"%s",__func__);
    
    NSString *text = self.text;
    
    NSCharacterSet *characterSet = [NSCharacterSet characterSetWithCharactersInString:@"0123456789\b"];
    
    if ([string rangeOfCharacterFromSet:[characterSet invertedSet]].location != NSNotFound) {
        return NO;
    }
    
    text = [text stringByReplacingCharactersInRange:range withString:string];
    text = [text stringByReplacingOccurrencesOfString:@" " withString:@""];
    [self setText:text];
    return NO;
    
}

@end
