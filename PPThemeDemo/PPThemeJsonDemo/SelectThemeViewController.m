//
//  SelectThemeViewController.m
//  PPThemeDemo
//
//  Created by Pai on 2020/6/11.
//  Copyright © 2020 Pai. All rights reserved.
//

#import "SelectThemeViewController.h"
#import "MyThemeTool.h"

@interface SelectThemeViewController ()

@end

@implementation SelectThemeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.theme_backgroundColor = [PPThemeColorPicker pickerWithKeyPath:@"Global.backgroundColor"];

    // Do any additional setup after loading the view.
}

- (IBAction)tapRed:(id)sender {
    [MyThemeTool switchTo:PPThemeTypeRed];
}

- (IBAction)tapYellow:(id)sender {
    [MyThemeTool switchTo:PPThemeTypeYellow];
}

- (IBAction)tapBlue:(id)sender {
    [MyThemeTool switchTo:PPThemeTypeBlue];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
