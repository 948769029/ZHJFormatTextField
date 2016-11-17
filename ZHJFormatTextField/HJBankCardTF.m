//
//  HJBankCardTF.m
//  ZHJFormatTextField
//
//  Created by apple on 2016/11/17.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "HJBankCardTF.h"

@implementation HJBankCardTF

- (BOOL)valueChangeValueString:(NSString *)string shouldChangeCharactersInRange:(NSRange)range
{
    
    NSString *text = self.text;
    
    NSCharacterSet *characterSet = [NSCharacterSet characterSetWithCharactersInString:@"0123456789\b"];
    string = [string stringByReplacingOccurrencesOfString:@" " withString:@""];
    if ([string rangeOfCharacterFromSet:[characterSet invertedSet]].location != NSNotFound) {
        return NO;
    }
    
    text = [text stringByReplacingCharactersInRange:range withString:string];
    text = [text stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    NSString *newString = @"";
    while (text.length > 0) {
        NSString *subString = [text substringToIndex:MIN(text.length, 4)];
        newString = [newString stringByAppendingString:subString];
        if (subString.length == 4) {
            newString = [newString stringByAppendingString:@" "];
        }
        text = [text substringFromIndex:MIN(text.length, 4)];
    }
    
    newString = [newString stringByTrimmingCharactersInSet:[characterSet invertedSet]];
    
    
    if (newString.length >= 24) {
        return NO;
    }
    
    [self setText:newString];
    
    return NO;
}

@end
