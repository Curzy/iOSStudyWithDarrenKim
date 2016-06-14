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
    
    self.view.backgroundColor =[UIColor grayColor];
    
    UILabel *label = [[UILabel alloc] init];
    label.frame = CGRectMake(5, 70, self.view.frame.size.width, 40);
    label.text = @"Hello Chisoo!";
    label.textColor = [UIColor redColor];
    [label sizeToFit];
    
    UIImageView *chisoo = [[UIImageView alloc]init];
    chisoo.image = [UIImage imageNamed: @"LAman.jpg"];
    chisoo.frame = CGRectMake(5, label.frame.origin.y + label.frame.size.height, chisoo.image.size.width, chisoo.image.size.height);
    
    UILabel *phone = [[UILabel alloc]init];
    phone.frame = CGRectMake(5, chisoo.frame.origin.y + chisoo.frame.size.height, self.view.frame.size.width, 40);
    phone.text = @"+1 (310) 208-9679";
    phone.textColor = [UIColor blueColor];
    [phone sizeToFit];
    
    UIButton *makeCall = [[UIButton alloc] init];
    makeCall.frame = CGRectMake(5, phone.frame.origin.y + phone.frame.size.height, self.view.frame.size.width, 40);
    makeCall.backgroundColor = [UIColor blueColor];
    [makeCall setTitle:@"Call Me!" forState:UIControlStateNormal];
    [makeCall setTitle:@"Calling!" forState:UIControlStateHighlighted];
    [makeCall addTarget:self action:@selector(makingCall:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:label];
    [self.view addSubview:chisoo];
    [self.view addSubview:phone];
    [self.view addSubview:makeCall];
    // Do any additional setup after loading the view.
}

- (void) makingCall :(UIButton *) makeCall {
    NSLog(@"전화 건다");
    NSURL *url= [NSURL URLWithString:@"tel:+1 (310) 208-9679"];
    [[UIApplication sharedApplication] openURL:url];

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
