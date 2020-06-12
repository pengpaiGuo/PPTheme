//
//  ListViewController.m
//  PPThemeDemo
//
//  Created by Pai on 2020/6/11.
//  Copyright © 2020 Pai. All rights reserved.
//

#import "ListViewController.h"
#import "MyThemeTool.h"

@interface ListViewController ()

@end

@implementation ListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.theme_backgroundColor = globalBackgroundColorPicker;
    self.tableView.theme_separatorColor = [PPThemeColorPicker pickerWithColors:@[@"#C6C5C5", @"#C6C5C5", @"#C6C5C5", @"#ECF0F1"]];
    // Do any additional setup after loading the view.
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
