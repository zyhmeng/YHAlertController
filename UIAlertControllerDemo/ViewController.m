//
//  ViewController.m
//  UIAlertControllerDemo
//
//  Created by zyh on 15/12/29.
//  Copyright © 2015年 zyh. All rights reserved.
//

#import "ViewController.h"
#import "YFAlertViewTool.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
- (IBAction)alertStyle:(id)sender {
    
    [YFAlertViewTool showActionAlertStyleInViewController:self title:@"hello" message:@"hello world" okTitle:@"OK" cancelTitlt:@"cancel" okBtnHandler:^(UIAlertAction * _Nonnull action) {
        
        NSLog(@"click OK");
    } cancelBtnHandler:^(UIAlertAction * _Nonnull action) {
        
        NSLog(@"click cancel");
    }];
    
    
    
}
- (IBAction)textFieldAlert:(id)sender {
    
    UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:@"TextFieldAlert" message:@"TextField Alert Style" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"click OK");
    }];
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"click cancel");
        
    }];
    [alertVC addAction:cancelAction];
    [alertVC addAction:okAction];
    [alertVC addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        textField.placeholder = @"Please enter your username";
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(handleTextFieldTextDidChangeNotification:) name:UITextFieldTextDidChangeNotification object:textField];

    }];
    [alertVC addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        textField.placeholder = @"Please enter your password";
    }];
        
    [self presentViewController:alertVC animated:YES completion:nil];

}


- (IBAction)actionSheetStyle:(id)sender {
    
    [YFAlertViewTool showActionSheetStyleInViewController:self withTitle:@"hello" message:@"hello world" cancelTitle:@"cancel" otherOneTitle:@"one" twoTitle:@"two" cancelHandler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"cancel");
    } oneHandler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"one ");
    } twoHandler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"two");
    }];
}
- (void)handleTextFieldTextDidChangeNotification:(NSNotification *)notification
{
    UITextField *textField = notification.object;
    NSLog(@"%@",textField.text);
}

@end
