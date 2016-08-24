//
//  ViewController.m
//  AutoLayout
//
//  Created by Felix ITs 01 on 01/08/16.
//  Copyright © 2016 Aashish Tamsya. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
//    UIImageView *myImageView = [[UIImageView alloc]initWithFrame:CGRectMake(50, 50, 50, 50)];
//    
//    UIImage *myImage = [UIImage imageNamed:@"first"];
//    
//    myImageView.image = myImage;
//    
//    [self.view addSubview:myImageView];
    
    
    
    sectionOneItems = [[NSArray alloc]initWithObjects:@"General",@"Privacy", nil];
    sectionTwoItems = [[NSArray alloc]initWithObjects:@"iCloud",@"Maps",@"News",@"Safari",@"Photos & Camera",@"Game Center", nil];

    sectionItems = [[NSMutableArray alloc]initWithObjects:sectionOneItems,sectionTwoItems, nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return sectionItems.count;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    
    NSInteger rows;
    
    switch (section) {
        case 0: rows = sectionOneItems.count;
            break;
        case 1 : rows =  sectionTwoItems.count; break;
        default: NSLog(@"Default Case for number of rows");
            break;
    }
    
    return rows;
    
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
//    SettingsTableViewCell *cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    
    SettingsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    
    
    NSInteger section = indexPath.section;
    NSString *textForTitle;
    UIImage *imageForPoster;
    
    switch (section) {
        case 0 :
//            NSLog(@"Section : %ld, Row : %ld",(long)section,(long)indexPath.row);
            
             textForTitle = [sectionOneItems objectAtIndex:indexPath.row];
            
            break;
            
        case 1 :
//            NSLog(@"Section : %ld, Row : %ld",(long)section,(long)indexPath.row);
            textForTitle = [sectionTwoItems objectAtIndex:indexPath.row];

            break;
            
        default: NSLog(@"Default Case for Section");
            break;
    }
//    cell.textLabel.text = stringForLabel;
    
    NSLog(@"%@",[textForTitle lowercaseString]);
    
    imageForPoster = [UIImage imageNamed:[textForTitle lowercaseString]];
    
    cell.poster.image = imageForPoster;
    cell.title.text = textForTitle;
    
    
    return cell;
}

@end
