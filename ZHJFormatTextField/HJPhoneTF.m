//
//  HJPhoneTF.m
//  ZHJFormatTextField
//
//  Created by apple on 2016/11/17.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "HJPhoneTF.h"

@implementation HJPhoneTF

- (BOOL)valueChangeValueString:(NSString *)string shouldChangeCharactersInRange:(NSRange)range
{
    
    NSString *text = self.text;
    
    NSCharacterSet *characterSet = [NSCharacterSet characterSetWithCharactersInString:@"0123456789\b"];
    string = [string stringByReplacingOccurrencesOfString:@" " withString:@""];
    if ([string rangeOfCharacterFromSet:[characterSet invertedSet]].location != NSNotFound) {
        return NO;
    }
    NSLog(@"%@",NSStringFromRange(range));
    text = [text stringByReplacingCharactersInRange:range withString:string];
    text = [text stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    NSString *newString = @"";
    
    NSString *subString = [text substringToIndex:MIN(text.length, 3)];
    
    newString = [newString stringByAppendingString:subString];
    if (subString.length == 3) {
        newString = [newString stringByAppendingString:@" "];
    }
    
    text = [text substringFromIndex:MIN(text.length, 3)];
    
    if (text.length > 0) {
        NSString *subString2 = [text substringToIndex:MIN(text.length, 4)];
        newString = [newString stringByAppendingString:subString2];
        if (subString2.length == 4) {
            newString = [newString stringByAppendingString:@" "];
            
        }
        NSString *subString3 = [text substringFromIndex:MIN(text.length, 4)];
        newString = [newString stringByAppendingString:subString3];
        
    }
    
    newString = [newString stringByTrimmingCharactersInSet:[characterSet invertedSet]];
    
    
    if (newString.length >= 14) {
        return NO;
    }
    
    [self setText:newString];
    
    return NO;
}

@end
