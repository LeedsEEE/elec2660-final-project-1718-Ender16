//
//  FirstTableViewController.m
//  SizeGuide
//
//  Created by 陈君名 on 2017/12/4.
//  Copyright © 2017年 University of Leeds. All rights reserved.
//

#import "FirstTableViewController.h"
#import "DetailTableViewController.h"

//Set the number of clothing sizes.
@interface FirstTableViewController (){
    NSArray *arr1;
    NSArray *arr2;
    NSArray *arr3;
    NSArray *arr4;
    NSInteger selectRow;
}

@end

@implementation FirstTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    //Input the size of the men's 3 types of clothing.
    if ([self.sex isEqualToString:@"man"]) {
        //MAN
        if (_type == 1) {
            arr1 = @[@"UK/IT SIZE\n",@"44",@"46",@"48",@"50",@"52",@"54",@"56",@"58",@"60"];
            arr2 = @[@"US SIZE\n",@"34",@"36",@"38",@"40",@"42",@"44",@"46",@"48",@"50"];
            arr3 = @[@"SIZE\n",@"XS",@"S",@"S/M",@"M",@"L",@"L/XL",@"XL",@"XXL",@"XXXL"];
        }
        else if (_type == 2){
            arr1 = @[@"SIZE(INCHES)\n",@"14",@"14.5",@"15",@"15.5",@"15.7",@"16",@"16.5",@"17",@"17.5",@"18"];
            arr2 = @[@"SIZE(cm)\n",@"36",@"37",@"38",@"39",@"40",@"41",@"42",@"43",@"44",@"46"];
            arr3 = @[@"SIZE\n",@"XS/S",@"S",@"S/M",@"M",@"M/L",@"L",@"L/XL",@"XL",@"XL/XXL",@"XXL"];
        }
        else if (_type == 3){
            arr2 = @[@"SIZE\n",@"XS",@"S",@"M",@"L",@"XL",@"XXL",@"XXXL"];
        }
    }
    //Input the size of the woman's 3 types of clothing.
    else{
        //WOMAN
        if (_type == 1) {
            arr1 = @[@"IT SIZE\n",@"34",@"36",@"38",@"40",@"42",@"44",@"46",@"48"];
            arr2 = @[@"UK SIZE\n",@"2",@"4",@"6",@"8",@"10",@"12",@"14",@"16"];
            arr3 = @[@"US SIZE\n",@"0",@"2",@"4",@"6",@"8",@"10",@"12",@"14"];
            arr4 = @[@"SIZE\n",@"XXS",@"XS",@"XS/S",@"S",@"S/M",@"M/L",@"L/XL",@"XL"];
        }
        else if (_type == 2){
            arr2 = @[@"SIZE\n",@"XXS",@"XS",@"S",@"M",@"L",@"XL",@"XXL"];
        }
        else if (_type == 3){
            arr2 = @[@"SIZE\n",@"XS",@"S",@"M",@"L",@"XL"];
        }
    }
    selectRow = 0;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    //Set a return button and the APP will return to the previous page when the user presses it.
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc]
                                             initWithTitle:@"Back"
                                             style:UIBarButtonItemStylePlain
                                             target:self
                                             action:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

//There are only 1 Table View.
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

//Set the number of rows.
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return arr2.count;
}

//Set the number of cells to display per row.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    //Configure the cell for woman.
    if (_type == 1 && [_sex isEqualToString:@"woman"]) {
        UILabel *label1 = [cell.contentView viewWithTag:1000];
        UILabel *label2 = [cell.contentView viewWithTag:1001];
        UILabel *label3 = [cell.contentView viewWithTag:1002];
        UILabel *label4 = [cell.contentView viewWithTag:1003];
        
        if (arr1.count > 0) {
            label1.text = arr1[indexPath.row];
            label1.hidden = NO;
        }
        if (arr2.count > 0) {
            label2.text = arr2[indexPath.row];
            label2.hidden = NO;
        }
        if (arr3.count > 0) {
            label3.text = arr3[indexPath.row];
            label3.hidden = NO;
        }
        if (arr4.count > 0) {
            label4.text = arr4[indexPath.row];
            label4.hidden = NO;
        }
    }
    //Configure the cell for man.
    else{
        UILabel *label1 = [cell.contentView viewWithTag:2000];
        UILabel *label2 = [cell.contentView viewWithTag:2001];
        UILabel *label3 = [cell.contentView viewWithTag:2002];
        if (arr1.count > 0) {
            label1.text = arr1[indexPath.row];
            label1.hidden = NO;
        }
        if (arr2.count > 0) {
            label2.text = arr2[indexPath.row];
            label2.hidden = NO;
        }
        if (arr3.count > 0) {
            label3.text = arr3[indexPath.row];
            label3.hidden = NO;
        }
    }
    
    if (indexPath.row == 0) {
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    else{
        cell.selectionStyle = UITableViewCellSelectionStyleDefault;
    }
    
    return cell;
}

//Connect the content of this page with the next page.
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    if (indexPath.row == 0) {
        return;
    }
    selectRow = indexPath.row;
    [self performSegueWithIdentifier:@"DetailTableViewController" sender:nil];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"DetailTableViewController"]) {
        DetailTableViewController *firtsVC = (DetailTableViewController *)segue.destinationViewController;
        firtsVC.sex = _sex;
        firtsVC.type = _type;
        firtsVC.sizeType = selectRow;
    }
}


/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 } else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end

