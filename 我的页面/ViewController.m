//
//  ViewController.m
//  我的页面
//
//  Created by maplestory on 2017/11/27.
//  Copyright © 2017年 QIUHANG. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.dataSource = self;
    
    
}
#pragma mark - UITableViewDataSource
/**告诉tableview一共有多少组数据**/
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 4;
}/**告诉tableview第Ssection组有多少行5**/
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if(section == 0){//第0组
        return 2;
        
}
    else if(section == 1){//第1组
        return 6;}
    else if(section == 2){//第2组
        return 6;}
    else {//最后一组
        return 1;}
}
/**告诉tableview每一行显示的内容(tableview每一行都是uitableviewcell或者它的子类)**/
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    UITableViewCell *cell = [[UITableViewCell alloc]init];
    if(indexPath.section ==0){//第0组
        if(indexPath.row==0){//第0组第0行
            UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 38, 38)];
            imageView.image = [UIImage imageNamed:@"订餐.png"];
            [cell.contentView addSubview:imageView];
            
                    cell.textLabel.text =@"        订餐服务";
        } else if(indexPath.row == 1){//第0组第1行
            UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 38, 38)];imageView.image = [UIImage imageNamed:@"时刻表.png"];
            [cell.contentView addSubview:imageView];
            cell.textLabel.text = @"        时刻表／正晚点";}}
    if(indexPath.section == 1){//第1组
        if(indexPath.row== 0){//第1组第0行
        UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 38, 38)];imageView.image = [UIImage imageNamed:@"酒店.png"];
        [cell.contentView addSubview:imageView];
        cell.textLabel.text = @"        酒店预订";}
        else if(indexPath.row == 1){//第1组第1行
            UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 38, 38)];imageView.image = [UIImage imageNamed:@"20拼车.png"];
            [cell.contentView addSubview:imageView];
            cell.textLabel.text = @"        拼车接站／机5元起";
            
             }
        else if(indexPath.row==2){//第1组第2行
        UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 38, 38)];imageView.image = [UIImage imageNamed:@"约专车-01.png"];
        [cell.contentView addSubview:imageView];
        cell.textLabel.text = @"        专车接送站";
        }
        else if(indexPath.row ==3){//第1组第3行
            UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 38, 38)];imageView.image = [UIImage imageNamed:@"约专车-01.png"];
            [cell.contentView addSubview:imageView];
            cell.textLabel.text = @"        自驾租车";
        }
        else if(indexPath.row == 4){//第1组第4行
            UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 38, 38)];imageView.image = [UIImage imageNamed:@"船.png"];
            [cell.contentView addSubview:imageView];
            cell.textLabel.text = @"        船票";
            
        }
        else if(indexPath.row == 5){//第1组第5行
            UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 38, 38)];imageView.image = [UIImage imageNamed:@"门票.png"];
            [cell.contentView addSubview:imageView];
            cell.textLabel.text = @"        门票娱乐";
            
        }


    }
    

    
    
   /** else {
     cell.textLabel.text = [NSString stringWithFormat:@"%ld组%ld行-其他数据",indexPath.section,indexPath.row];  } **/
    return cell;
    
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:( NSIndexPath *)indexPath{
    if(indexPath.section  ==0){
        if(indexPath.row == 0){
    
        ViewController *oneController =[[self storyboard]instantiateViewControllerWithIdentifier:@"ViewOne"];
        [[self navigationController]pushViewController:oneController animated:YES];
        } }
    else {
        ViewController *twoController =[[self storyboard]instantiateViewControllerWithIdentifier:@"ViewTwo"];
        [[self navigationController]pushViewController:twoController animated:YES];
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
