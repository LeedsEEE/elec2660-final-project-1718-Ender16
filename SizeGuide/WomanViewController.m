//
//  WomanViewController.m
//  SizeGuide
//
//  Created by 陈君名 on 2017/12/4.
//  Copyright © 2017年 University of Leeds. All rights reserved.
//

#import "WomanViewController.h"
#import "FirstTableViewController.h"

@interface WomanViewController ()<UIPickerViewDelegate,UIPickerViewDataSource>
{
    NSInteger selectedType;
}

@end

@implementation WomanViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.pickerView.delegate = self;
    self.pickerView.dataSource = self;
    selectedType = 0;
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:30]} forState:UIControlStateNormal];
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc]
                                             initWithTitle:@"Back"
                                             style:UIBarButtonItemStylePlain
                                             target:self
                                             action:nil];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"FirstTableViewController"]) {
        FirstTableViewController *firtsVC = (FirstTableViewController *)segue.destinationViewController;
        firtsVC.sex = @"woman";
        firtsVC.hidesBottomBarWhenPushed = YES;
        firtsVC.type = selectedType + 1;
    }
    else if ([segue.identifier isEqualToString:@"SecondTableViewController"]) {
        FirstTableViewController *secondVC = (FirstTableViewController *)segue.destinationViewController;
        secondVC.sex = @"woman";
        secondVC.hidesBottomBarWhenPushed = YES;
        secondVC.type = selectedType + 1;
    }
    else if ([segue.identifier isEqualToString:@"ThirdTableViewController"]) {
        FirstTableViewController *thirdVC = (FirstTableViewController *)segue.destinationViewController;
        thirdVC.sex = @"woman";
        thirdVC.hidesBottomBarWhenPushed = YES;
        thirdVC.type = selectedType + 1;
    }
}

- (IBAction)pushAction:(id)sender {
    if (selectedType == 0) {
        [self performSegueWithIdentifier:@"FirstTableViewController" sender:nil];
    }
    else if (selectedType == 1){
        [self performSegueWithIdentifier:@"FirstTableViewController" sender:nil];
    }
    else if (selectedType == 2){
        [self performSegueWithIdentifier:@"FirstTableViewController" sender:nil];
    }
}

#pragma mark Picker View Delegate Methods
-(NSString *) pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    
    NSString *coordinate=[[NSString alloc]init];
    if(row==0){
        coordinate=@"COATS,JACKETS,SHIRTS,SKIRTS,TROUSERS&DRESSES";
    }
    if(row==1){
        coordinate=@"KNITWEAR&T-SHIRTS";
    }
    if(row==2){
        coordinate=@"SWIMWEAR";
    }
    return coordinate;
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    selectedType = row;
}

#pragma mark Picker View Data Source Methods
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return 3;
}

-(UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view{
    UILabel* pickerLabel = (UILabel*)view;
    if (!pickerLabel){
        pickerLabel = [[UILabel alloc] init];
        // Setup label properties - frame, font, colors etc
        //adjustsFontSizeToFitWidth property to YES
        pickerLabel.adjustsFontSizeToFitWidth = YES;
        [pickerLabel setTextAlignment:NSTextAlignmentLeft];
        [pickerLabel setBackgroundColor:[UIColor clearColor]];
        [pickerLabel setFont:[UIFont boldSystemFontOfSize:15]];
    }
    // Fill the label text here
    pickerLabel.text = [self pickerView:pickerView titleForRow:row forComponent:component];
    return pickerLabel;
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

