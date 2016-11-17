//
//  HJNumberTF.h
//  ZHJFormatTextField
//
//  Created by apple on 2016/11/17.
//  Copyright © 2016年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HJNumberTF : UITextField

- (BOOL)valueChangeValueString:(NSString *)string shouldChangeCharactersInRange:(NSRange)range;

@end
