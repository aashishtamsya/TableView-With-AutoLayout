//
//  ViewController.h
//  AutoLayout
//
//  Created by Felix ITs 01 on 01/08/16.
//  Copyright © 2016 Aashish Tamsya. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SettingsTableViewCell.h"


@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
{
    NSMutableArray *sectionItems;
    NSArray *sectionOneItems;
    NSArray *sectionTwoItems;
}
@property (weak, nonatomic) IBOutlet UITableView *tableViewSettings;

@end

