//
//  ManViewController.m
//  SizeGuide
//
//  Created by 陈君名 on 2017/12/4.
//  Copyright © 2017年 University of Leeds. All rights reserved.
//

#import "ManViewController.h"
#import "FirstTableViewController.h"

//Let the users can choose the type of clothes.
@interface ManViewController ()<UIPickerViewDelegate,UIPickerViewDataSource>
{
    NSInteger selectedType;
}

@end

@implementation ManViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.pickerView.delegate = self;
    self.pickerView.dataSource = self;
    selectedType = 0;
    //Set a return button and the APP will return to the previous page when the user presses it.
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc]
                                             initWithTitle:@"Back"
                                             style:UIBarButtonItemStylePlain
                                             target:self
                                             action:nil];
}

//Let the users have 3 chooses by Picker View for man's clothes.
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"FirstTableViewController"]) {
        FirstTableViewController *firtsVC = (FirstTableViewController *)segue.destinationViewController;
        firtsVC.sex = @"man";
        firtsVC.type = selectedType + 1;
        firtsVC.hidesBottomBarWhenPushed = YES;
    }
    else if ([segue.identifier isEqualToString:@"FirstTableViewController"]) {
        FirstTableViewController *secondVC = (FirstTableViewController *)segue.destinationViewController;
        secondVC.sex = @"man";
        secondVC.type = selectedType + 1;
        secondVC.hidesBottomBarWhenPushed = YES;
    }
    else if ([segue.identifier isEqualToString:@"FirstTableViewController"]) {
        FirstTableViewController *thirdVC = (FirstTableViewController *)segue.destinationViewController;
        thirdVC.sex = @"man";
        thirdVC.type = selectedType + 1;
        thirdVC.hidesBottomBarWhenPushed = YES;
    }
}

//After the uses choose each type,they can press a confirm bottom, the APP will go to the corresponding pages to display all sizes of this type clothes.
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

//Tell the user the type of clothing that each row represents
#pragma mark Picker View Delegate Methods
-(NSString *) pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    
    NSString *coordinate=[[NSString alloc]init];
    if(row==0){
        coordinate=@"COATS,SUITS,JACKETS&TROUSERS";
    }
    if(row==1){
        coordinate=@"FORMAL SHIRTS";
    }
    if(row==2){
        coordinate=@"CASUAL SHIRTS,KNITWEAR,T-SHIRTS,POLOS,SWIMWEAR&UNDERWEAR";
    }
    return coordinate;
}

//Set the type of the selection to correspond to the row.
-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    selectedType = row;
}

#pragma mark Picker View Data Source Methods
//There is only 1 column for the Picker View.
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}

//There are 3 rows for the Picker View.
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return 3;
}

//Set display view.
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

