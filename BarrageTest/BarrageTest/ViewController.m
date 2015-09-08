//
//  ViewController.m
//  BarrageTest
//
//  Created by mini4s215 on 9/7/15.
//  Copyright © 2015 mini4s215. All rights reserved.
//

#import "ViewController.h"
#import "BarrageView.h"

@interface ViewController ()

@property (nonatomic, strong) BarrageView *barrageView;
@property (nonatomic, strong) UITextField *textField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor lightGrayColor];
    _barrageView = [[BarrageView alloc]initWithFrame:self.view.bounds];
    [self.view addSubview:_barrageView];
    _barrageView.commentArray = [NSMutableArray arrayWithObjects:@"关弹幕 保智商",@"我不服",@"我的鱼丸呢我擦", @"摄像头挡住了",@"23333333333",@"6666666666",@"这波不亏",@"实力3杀",@"瑞文能打得过剑姬？",@"草",@"我赵日天不服",@"666666666",@"1111111",@"不要怂就是干啊",@"补刀好吊", nil];
    self.textField = [[UITextField alloc]initWithFrame:CGRectMake(100, 150, 200, 30)];
    self.textField.backgroundColor = [UIColor whiteColor];
    self.textField.placeholder = @"输入评论";
    [self.view addSubview:self.textField];

    UIButton *startBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    startBtn.frame = CGRectMake(100, 200, 100, 30);
    [startBtn setTitle:@"添加评论" forState:UIControlStateNormal];
    [startBtn addTarget:self action:@selector(start) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:startBtn];
    [self.barrageView openBarrage];
    
   
    
}

-(void)start
{
    [self.barrageView addMyComment:self.textField.text];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
