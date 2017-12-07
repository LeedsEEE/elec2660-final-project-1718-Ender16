//
//  DetailTableViewController.m
//  SizeGuide
//
//  Created by 陈君名 on 2017/12/4.
//  Copyright © 2017年 University of Leeds. All rights reserved.
//

#import "DetailTableViewController.h"


//Details of the size definition
@interface DetailTableViewController ()
{
    NSArray *arr1;
    NSArray *arr2;
    NSArray *arr3;
    NSArray *arr4;
}

@end

@implementation DetailTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    //Input information about all sizes of all types of clothing for man.
    if ([self.sex isEqualToString:@"man"]) {
        //MAN
        if (_type == 1) {
            arr1 = @[@"CHEST\n",@"35in\n90cm",@"37in\n94cm",@"38.6in\n98cm",@"40in\n102cm",@"41.7in\n106cm",@"43.3in\n110cm",@"44.9in\n114cm",@"46.4in\n118cm",@"48in\n122cm"];
            arr2 = @[@"WAIST\n",@"29.5in\n75cm",@"31.1in\n79cm",@"32.7in\n83cm",@"34.3in\n87cm",@"35.8in\n91cm",@"37.4in\n95cm",@"39in\n99cm",@"40.5in\n103cm",@"42.1in\n107cm"];
            arr3 = @[@"HIPS\n",@"35in\n89cm",@"36.6in\n93cm",@"38.1in\n97cm",@"40.8in\n101cm",@"41.3in\n105cm",@"42.9in\n109cm",@"44.5in\n113cm",@"46in\n117cm",@"47.6in\n121cm"];
            arr4 = @[@"ARM\n",@"32.6in\n83cm",@"33.2in\n84.5cm",@"33.8in\n86cm",@"34.4in\n87.5cm",@"35in\n89cm",@"35.6in\n90.5cm",@"36.2in\n92cm",@"36.8in\n93.5cm",@"37.4in\n95cm"];
        }
        else if (_type == 2){
            arr1 = @[@"NECK\n",@"14in\n35.6cm",@"14.5in\n36.8cm",@"15in\n38.1cm",@"15.5in\n39.4cm",@"15.7in\n40cm",@"16in\n40.6cm",@"16.5in\n41.9cm",@"17in\n43.2cm",@"17.5in\n44.4cm",@"18in\n45.7cm"];
            arr2 = @[@"CHEST\n",@"35.8in\n91cm",@"37in\n94cm",@"38.2in\n97cm",@"39.4in\n100cm",@"40.5in\n103cm",@"41.7in\n106cm",@"42.9in\n109cm",@"44in\n112cm",@"45.3in\n115cm",@"46.5in\n118cm"];
            arr3 = @[@"WAIST\n",@"29.9in\n76cm",@"31.1in\n79cm",@"32.3in\n82cm",@"33.5in\n85cm",@"34.6in\n88cm",@"35.8in\n91cm",@"37in\n94cm",@"38.2in\n97cm",@"39.8in\n100cm",@"40.6in\n103cm"];
            arr4 = @[@"ARM\n",@"32.7in\n83cm",@"33.1in\n84.2cm",@"33.6in\n85.4cm",@"34in\n86.6cm",@"34.6in\n87.8cm",@"35in\n89cm",@"35.5in\n90.2cm",@"36in\n91.4cm",@"36.5in\n92.6cm",@"37in\n93.8cm"];
        }
        else if (_type == 3){
            arr1 = @[@"CHEST\n",@"35.4in\n90cm",@"37.8in\n96cm",@"40in\n102cm",@"42.5in\n108cm",@"44.9in\n114cm",@"47.2in\n120cm",@"49.6in\n126cm"];
            arr2 = @[@"WAIST\n",@"29.5in\n75cm",@"31.9in\n81cm",@"34.3in\n87cm",@"36.6in\n93cm",@"39in\n99cm",@"41.3in\n105cm",@"43.7in\n111cm"];
            arr3 = @[@"HIPS\n",@"35in\n89cm",@"37.4in\n95cm",@"39.8in\n101cm",@"42.1in\n107cm",@"44.5in\n113cm",@"46.9in\n119cm",@"49.2in\n125cm"];
            arr4 = @[@"ARM\n",@"33.2in\n84.5cm",@"33.8in\n86cm",@"34.4in\n87.5cm",@"35in\n89cm",@"35.6in\n90.5cm",@"36.2in\n92cm",@"36.8in\n93.5cm"];
        }
    }
    
    //Input information about all sizes of all types of clothing for woman.
    else{
        //WOMAN
        if (_type == 1) {
            arr1 = @[@"BUST\n",@"30in\n76cm",@"31in\n79cm",@"32in\n82cm",@"33.5in\n85cm",@"35in\n88cm",@"36.5in\n92cm",@"38in\n96cm",@"40in\n100cm"];
            arr2 = @[@"WAIST\n",@"23in\n58cm",@"24in\n61cm",@"25in\n64cm",@"26in\n67cm",@"27.5in\n70cm",@"29in\n74cm",@"31in\n78cm",@"32in\n82cm"];
            arr3 = @[@"HIPS\n",@"33in\n83cm",@"34in\n86cm",@"35in\n89cm",@"36in\n92cm",@"37.5in\n95cm",@"39in\n99cm",@"40.5in\n103cm",@"42in\n107cm"];
        }
        else if (_type == 2){
            arr1 = @[@"BUST\n",@"30in\n76cm",@"32in\n82cm",@"35in\n88cm",@"37in\n94cm",@"39.5in\n100cm",@"42.5in\n106cm",@"44in\n112cm"];
            arr2 = @[@"WAIST\n",@"23in\n59cm",@"25.5in\n65cm",@"28.5in\n71cm",@"30in\n77cm",@"32.5in\n83cm",@"35in\n89cm",@"37.5in\n95cm"];
            arr3 = @[@"HIPS\n",@"33in\n84cm",@"35.5in\n90cm",@"38.5in\n96cm",@"40in\n102cm",@"42.5in\n108cm",@"45in\n114cm",@"47in\n120cm"];
        }
        else if (_type == 3){
            arr1 = @[@"BUST\n",@"32in\n81cm",@"34in\n86cm",@"36in\n91cm",@"38in\n96cm",@"40in\n101cm"];
            arr2 = @[@"WAIST\n",@"23in\n59cm",@"25in\n64cm",@"27in\n69cm",@"29in\n74cm",@"31in\n79cm"];
            arr3 = @[@"HIPS\n",@"34in\n86cm",@"36in\n91cm",@"38in\n96cm",@"40in\n101cm",@"42in\n106cm"];
        }
    }
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    NSInteger temRow = 0;
    if (indexPath.row > 0) {
        temRow = _sizeType;
    }
    if ([_sex isEqualToString:@"man"]) {
        UILabel *label1 = [cell.contentView viewWithTag:1000];
        UILabel *label2 = [cell.contentView viewWithTag:1001];
        UILabel *label3 = [cell.contentView viewWithTag:1002];
        UILabel *label4 = [cell.contentView viewWithTag:1003];
        
        if (arr1.count > 0) {
            label1.text = arr1[temRow];
            label1.hidden = NO;
        }
        if (arr2.count > 0) {
            label2.text = arr2[temRow];
            label2.hidden = NO;
        }
        if (arr3.count > 0) {
            label3.text = arr3[temRow];
            label3.hidden = NO;
        }
        if (arr4.count > 0) {
            label4.text = arr4[temRow];
            label4.hidden = NO;
        }
    }
    else{
        UILabel *label1 = [cell.contentView viewWithTag:2000];
        UILabel *label2 = [cell.contentView viewWithTag:2001];
        UILabel *label3 = [cell.contentView viewWithTag:2002];
        if (arr1.count > 0) {
            label1.text = arr1[temRow];
            label1.hidden = NO;
        }
        if (arr2.count > 0) {
            label2.text = arr2[temRow];
            label2.hidden = NO;
        }
        if (arr3.count > 0) {
            label3.text = arr3[temRow];
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

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
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



