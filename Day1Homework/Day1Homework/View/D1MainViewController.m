//
//  D1MainViewController.m
//  Day1Homework
//
//  Created by Curzy on 2016. 6. 8..
//  Copyright © 2016년 Curzy. All rights reserved.
//

#import "D1MainViewController.h"
#import "D1DetailViewController.h"

@interface D1MainViewController () <UITableViewDelegate, UITableViewDataSource>

@property (strong,nonatomic) UITableView *table;
@property (strong,nonatomic) NSArray     *content;

@end

@implementation D1MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    UITableView *chisooTable = [[UITableView alloc] init];
    UILabel *label = [[UILabel alloc] init];
    label.frame = CGRectMake(0, 20, self.view.frame.size.width, 40);
    label.text = @"Hello World";
    label.textColor = [UIColor blueColor];
    label.backgroundColor = [UIColor grayColor];
    [label sizeToFit];
    
    _table = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    _table.delegate = self;
    _table.dataSource = self;

    UIButton *button = [[UIButton alloc] init];
    button.frame = CGRectMake(0, label.frame.origin.y + label.frame.size.height, self.view.frame.size.width, 40);
    button.backgroundColor = [UIColor greenColor];
    button.titleLabel.text = @"Click Me!";
    button.titleLabel.textColor = [UIColor redColor];
    [button addTarget:self action:@selector(cellTouched:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:_table];
//
//    [self.view addSubview: label];
//    [self.view addSubview:button];
    
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 4;

}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 10;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier = @"cellIdentifier";
    
    UITableViewCell *cell = [self.table dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if(cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    if (indexPath.row == 1 && indexPath.section == 1) {
        cell.textLabel.text =@"Chisoo!";
        cell.imageView.image = [UIImage imageNamed: @"LAman.jpg"];
        return cell;
    }
    
    cell.textLabel.text =  @"Cell!";
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath; {
    if (indexPath.row == 1 && indexPath.section ==1) {
        NSLog(@"Chisoo!!");
        D1DetailViewController *detailViewController = [[D1DetailViewController alloc] init];
        [self.navigationController pushViewController:detailViewController animated:YES];
    }
    else {
        NSLog(@"Cell이 눌렸당");
    }
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    return @"Section";
}

- (void) cellTouched:(UITableViewCell *) tableView {
}
- (void)viewWillAppear:(BOOL)animated
{
    [self.navigationController setNavigationBarHidden:NO animated:YES];
    self.navigationController.toolbarHidden = YES;
    [super viewWillAppear:animated];
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
