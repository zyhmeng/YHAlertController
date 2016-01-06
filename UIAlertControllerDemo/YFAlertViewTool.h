//
//  YFAlertViewTool.h
//  UIAlertControllerDemo
//
//  Created by zyh on 15/12/29.
//  Copyright © 2015年 zyh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface YFAlertViewTool : NSObject

+ (void)showActionSheetStyleInViewController:(nonnull UIViewController *)viewController withTitle:(nullable NSString *)title message:(nullable NSString *)message cancelTitle:(nullable NSString *)cancelTitle otherOneTitle:(nullable NSString *)oneTitle twoTitle:(nullable NSString *)twoTitle cancelHandler:(void(^ __nullable)(UIAlertAction * _Nonnull action))cancelAction oneHandler:(void(^ __nullable)(UIAlertAction * _Nonnull action))oneAction twoHandler:(void(^ __nullable)(UIAlertAction * _Nonnull action))twoAction;
/**
 *  alertStyle
 *
 *  @param viewController need show viewController
 *  @param title          alert title
 *  @param message        alert message
 *  @param okTitle        ok titlt
 *  @param cancelTitle    cancel title
 *  @param okAction       handler ok button
 *  @param cancelAction   handler cancel button
 *
 *  @return alertViewController
 */
+ (void)showActionAlertStyleInViewController:(nonnull UIViewController *)viewController title:(nullable NSString *)title message:(nullable NSString *)message okTitle:(nullable NSString *)okTitle cancelTitlt:(nullable NSString *)cancelTitle okBtnHandler:(void(^ __nullable)(UIAlertAction * _Nonnull action))okAction cancelBtnHandler:(void(^ __nullable)(UIAlertAction * _Nonnull action))cancelAction;

+ (void)ff;
@end
