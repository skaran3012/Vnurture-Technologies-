//
//  AddTutor.m
//  VNurture App
//
//  Created by Prachi on 22/03/16.
//  Copyright (c) 2016 Appuno IT Solutions. All rights reserved.
//

#import "AddTutor.h"
#import "RootViewController.h"

@interface AddTutor ()

@end

@implementation AddTutor

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBarHidden=TRUE;
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

- (IBAction)backPressed:(id)sender {
   // RootViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"rootController"];
    
    //[self presentViewController:vc animated:YES completion:nil];
   // [self dismissViewControllerAnimated:true completion:nil];
}
@end
