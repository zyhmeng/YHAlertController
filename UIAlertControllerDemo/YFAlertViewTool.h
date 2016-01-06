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

/**
 *  sheetStyle
 *
 *  @param viewController         need show viewController
 *  @param title                  alert title
 *  @param message                alert message
 *  @param cancelButtonTitle      alert cancel title
 *  @param destructiveButtonTitle destrutive title
 *  @param otherButtonTitles      can add other title
 *
 *  @return alertViewController
 */
+ (nonnull instancetype)showActionSheetStyleInViewController:(nonnull UIViewController *)viewController withTitle:(nullable NSString *)title message:(nullable NSString *)message cancelButtonTitle:(nullable NSString *)cancelButtonTitle destructiveButtonTitle:(nullable NSString *)destructiveButtonTitle otherButtonTitles:(nullable NSArray *)otherButtonTitles;
+ (nonnull instancetype)showActionAlertStyleWithViewController:(nonnull UIViewController *)viewController title:(nullable NSString *)title message:(nullable NSString *)message okTitle:(nullable NSString *)okTitle cancelTitlt:(nullable NSString *)cancelTitle okBtnHandler:(void(^ __nullable)(UIAlertAction * _Nonnull action))action cancelBtnHandler:(void(^ __nullable)(UIAlertAction * _Nonnull action))action;
@end
