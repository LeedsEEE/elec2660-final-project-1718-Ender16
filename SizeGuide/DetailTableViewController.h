//
//  DetailTableViewController.h
//  SizeGuide
//
//  Created by 陈君名 on 2017/12/4.
//  Copyright © 2017年 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailTableViewController : UITableViewController

@property (nonatomic, strong)NSString *sex;//woman,man
@property (nonatomic, assign)NSInteger type;//1,2,3
@property (nonatomic, assign)NSInteger sizeType;//1,2,3

@end

