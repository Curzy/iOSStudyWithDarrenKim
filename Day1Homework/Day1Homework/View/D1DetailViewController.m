//
//  D1DetailViewController.m
//  Day1Homework
//
//  Created by Curzy on 2016. 6. 9..
//  Copyright © 2016년 Curzy. All rights reserved.
//

#import "D1DetailViewController.h"

@interface D1DetailViewController ()

@end

@implementation D1DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CGRect screenBounds = [UIScreen mainScreen].bounds;
    
    self.view.backgroundColor =[UIColor grayColor];
    
    UILabel *label = [[UILabel alloc] init];
    label.frame = CGRectMake(0, 20, self.view.frame.size.width, 40);
    label.text = @"Hello Chisoo!";
    label.textColor = [UIColor redColor];
    [label sizeToFit];
    
    UIImageView *chisoo = [[UIImageView alloc]init];
    chisoo.frame = CGRectMake(0, label.frame.origin.y + label.frame.size.height, chisoo.image.size.width, chisoo.image.size.height);
    chisoo.image = [UIImage imageNamed: @"LAman.jpg"];
    
    [self.view addSubview:label];
    [self.view addSubview:chisoo];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
