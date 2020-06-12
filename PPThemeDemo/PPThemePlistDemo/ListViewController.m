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
    self.tableView.theme_backgroundColor = [PPThemeColorPicker pickerWithKeyPath:@"Global.backgroundColor"];
    self.tableView.theme_separatorColor = [PPThemeColorPicker pickerWithKeyPath:@"ListViewController.separatorColor"];    // Do any additional setup after loading the view.
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
