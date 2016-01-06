//
//  YFAlertViewTool.m
//  UIAlertControllerDemo
//
//  Created by zyh on 15/12/29.
//  Copyright © 2015年 zyh. All rights reserved.
//

#import "YFAlertViewTool.h"

@implementation YFAlertViewTool
+ (instancetype)showActionSheetStyleInViewController:(UIViewController *)viewController withTitle:(NSString *)title message:(NSString *)message cancelButtonTitle:(NSString *)cancelButtonTitle destructiveButtonTitle:(NSString *)destructiveButtonTitle otherButtonTitles:(NSArray *)otherButtonTitles 
{
    UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleActionSheet];
    
    __weak UIAlertController *controller = alertVC;
    
    if (cancelButtonTitle) {
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:cancelButtonTitle style:UIAlertActionStyleCancel handler:nil];
        [controller addAction:cancelAction];
    }
    if (destructiveButtonTitle) {
        UIAlertAction *destructiveAction = [UIAlertAction actionWithTitle:destructiveButtonTitle style:UIAlertActionStyleDestructive handler:nil];
        [controller addAction:destructiveAction];
    }
    for (NSUInteger i = 0; i < otherButtonTitles.count; i++) {
        NSString *otherButtonTitle = otherButtonTitles[i];
        
        UIAlertAction *otherAction = [UIAlertAction actionWithTitle:otherButtonTitle style:UIAlertActionStyleDefault handler:nil];
        [controller addAction:otherAction];
    }
    
    [viewController presentViewController:controller animated:YES completion:nil];
    return (YFAlertViewTool *)controller;
}

+ (nonnull instancetype)showActionAlertStyleWithViewController:(nonnull UIViewController *)viewController title:(nullable NSString *)title message:(nullable NSString *)message okTitle:(nullable NSString *)okTitle cancelTitlt:(nullable NSString *)cancelTitle okBtnHandler:(void(^ __nullable)(UIAlertAction * _Nonnull action))okAction cancelBtnHandler:(void(^ __nullable)(UIAlertAction * _Nonnull action))cancelAction
{
    UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    
    __weak UIAlertController *controller = alertVC;
    
    if (okTitle) {
        UIAlertAction *ok = [UIAlertAction actionWithTitle:okTitle style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            okAction(action);
           
        }];
        [controller addAction:ok];
    }
    if (cancelTitle) {
        UIAlertAction *cancel = [UIAlertAction actionWithTitle:cancelTitle style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
            cancelAction(action);
            
        }];
        [controller addAction:cancel];
    }
    
    
    [viewController presentViewController:controller animated:YES completion:nil];
    return (YFAlertViewTool *)controller;
}
@end
