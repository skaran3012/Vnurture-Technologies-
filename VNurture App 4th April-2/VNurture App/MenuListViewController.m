//
//  MenuListViewController.m
//  VNurture App
//
//  Created by Mehul Panchal on 04/04/16.
//  Copyright (c) 2016 Appuno IT Solutions. All rights reserved.
//

#import "MenuListViewController.h"
#import "HomeViewController.h"
#import "UIViewController+RESideMenu.h"
/*#import "BatchDetail.h"
#import "AddTemplate.h"
#import "AddInquiry.h"
#import "AddTutor.h"
#import "AddStudent.h"
#import "AddBatch.h"
#import "AddNotice.h"
#import "EditPaymentDetail.h"
#import "EditStudentDetail.h"*/


@interface MenuListViewController ()
@property(nonatomic,strong) NSArray *titles;

@end

@implementation MenuListViewController
@synthesize titles;
@synthesize tableView1;

- (void)viewDidLoad {
    [super viewDidLoad];
    titles = @[@"Home",@"Wall",@"Payment Detail",@"Logout"];
    
    tableView1=[[UITableView alloc]initWithFrame:CGRectMake(0, (self.view.frame.size.height - 54 * 5) / 2.0f, self.view.frame.size.width, 54 * 5) style:UITableViewStylePlain];
    tableView1.autoresizingMask = UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleBottomMargin | UIViewAutoresizingFlexibleWidth;
    tableView1.backgroundColor = [UIColor clearColor];
    tableView1.backgroundView = nil;
    tableView1.separatorStyle = UITableViewCellSeparatorStyleNone;
    tableView1.bounces = NO;
    tableView1.scrollsToTop = NO;
    //tableView1.backgroundColor=[UIColor whiteColor ];
    [self.view addSubview:tableView1];
    tableView1.dataSource=self;
    tableView1.delegate=self;


    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark -
#pragma mark UITableView Delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView1 deselectRowAtIndexPath:indexPath animated:YES];
   /* switch (indexPath.row) {
        case 0:
            [self.sideMenuViewController setContentViewController:[[UINavigationController alloc] initWithRootViewController:[self.storyboard instantiateViewControllerWithIdentifier:@"firstViewController"]]
                                                         animated:YES];
            [self.sideMenuViewController hideMenuViewController];
            break;
            
        case 1:
            [self.sideMenuViewController setContentViewController:[[UINavigationController alloc] initWithRootViewController:[self.storyboard instantiateViewControllerWithIdentifier:@"BatchDetail"]]
                                                         animated:YES];
            [self.sideMenuViewController hideMenuViewController];
            break;
        case 2:
            [self.sideMenuViewController setContentViewController:[[UINavigationController alloc] initWithRootViewController:[self.storyboard instantiateViewControllerWithIdentifier:@"EditPaymentDetail"]]
                                                         animated:YES];
            [self.sideMenuViewController hideMenuViewController];
            break;
        case 3:
            [self.sideMenuViewController setContentViewController:[[UINavigationController alloc] initWithRootViewController:[self.storyboard instantiateViewControllerWithIdentifier:@"EditStudentDetail"]]
                                                         animated:YES];
            [self.sideMenuViewController hideMenuViewController];
            break;
        case 4:
            [self.sideMenuViewController setContentViewController:[[UINavigationController alloc] initWithRootViewController:[self.storyboard instantiateViewControllerWithIdentifier:@"EditStudentDetail"]]
                                                         animated:YES];
            [self.sideMenuViewController hideMenuViewController];
            break;
            
        default:
            break;
    }*/
}

#pragma mark -
#pragma mark UITableView Datasource

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 54;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)sectionIndex
{
    return titles.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    /*static NSString *cellIdentifier = @"Cell";
     
     UITableViewCell *cell = [tableView1 dequeueReusableCellWithIdentifier:cellIdentifier];
     
     if (cell == nil) {
     cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
     cell.backgroundColor = [UIColor clearColor];
     cell.textLabel.font = [UIFont fontWithName:@"HelveticaNeue" size:21];
     cell.textLabel.textColor = [UIColor whiteColor];
     cell.textLabel.highlightedTextColor = [UIColor lightGrayColor];
     cell.selectedBackgroundView = [[UIView alloc] init];
     }
     
     //NSArray *images = @[@"IconHome", @"IconCalendar", @"IconProfile", @"IconSettings", @"IconEmpty"];
     cell.textLabel.text = titles[indexPath.row];
     // cell.imageView.image = [UIImage imageNamed:images[indexPath.row]];
     
     return cell;*/
    static NSString *cell=@"cell";
    
    UITableViewCell *str2=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cell];
    str2.backgroundColor=[UIColor clearColor];
    str2.textLabel.font=[UIFont fontWithName:@"HelveticaNeue" size:21];
    str2.textLabel.textColor=[UIColor blackColor];
    str2.textLabel.highlightedTextColor=[UIColor lightGrayColor];
    str2.textLabel.text=titles[indexPath.row];
    str2.selectedBackgroundView=[[UIView alloc]init];
    return str2;
    
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
