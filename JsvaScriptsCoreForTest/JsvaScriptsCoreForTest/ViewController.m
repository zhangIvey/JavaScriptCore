//
//  ViewController.m
//  JsvaScriptsCoreForTest
//
//  Created by yaoln on 16/9/1.
//  Copyright © 2016年 zhangze. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end


#define K_width [[UIScreen mainScreen] bounds].size.width
#define K_height [[UIScreen mainScreen] bounds].size.height


@implementation ViewController

/**
 *Function ：创建按钮
 *Parameter：
 *Return   ：
 *From     ：zhangIvey
 *Version  ：
 */
- (UIButton *)createButtonWithTitle:(NSString *)title selector:(NSString *)selector rect:(CGRect )rect
{
    UIButton *button = [[UIButton alloc] initWithFrame:rect];
    [button setBackgroundColor:[UIColor blueColor]];
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(selector) forControlEvents:UIControlEventTouchUpInside];
    return button;
    
}


/**
 *Function ：界面布局函数
 *Parameter：
 *Return   ：
 *From     ：zhangIvey
 *Version  ：
 */
- (void)layout
{
    //坐标设置
    CGRect rect1 = CGRectMake(30, 30 + 44, K_width - 30 * 2, 40);
    CGRect rect2 = CGRectMake(rect1.origin.x, rect1.origin.y + rect1.size.height + 20, rect1.size.width, rect1.size.height);
    CGRect rect3 = CGRectMake(rect1.origin.x, rect2.origin.y + rect2.size.height + 20, rect2.size.width, rect2.size.height);
    
    //视图创建
    UIButton *button1 = [self createButtonWithTitle:@"JSCallOC" selector:@"JSCallOC" rect:rect1];
    UIButton *button2 = [self createButtonWithTitle:@"OCCallJS" selector:@"OCCallJS" rect:rect2];
    UIButton *button3 = [self createButtonWithTitle:@"HighchartsWeb" selector:@"HighchartsWeb" rect:rect3];
    
    
    //按钮的添加
    [self.view addSubview:button1];
    [self.view addSubview:button2];
    [self.view addSubview:button3];
    
}


/**
 *Function ：JS call OC
 *Parameter：
 *Return   ：
 *From     ：zhangIvey
 *Version  ：
 */
- (void)JSCallOC
{
    NSLog(@"JS 调用原生");
//    NSAssert(nil, @"JS 调用原生");
    
    
}



/**
 *Function ：OC call JS
 *Parameter：
 *Return   ：
 *From     ：zhangIvey
 *Version  ：
 */
-(void)OCCallJS
{
    NSLog(@"原生调用 JS");
//    NSAssert(nil, @"原生调用 JS");
}

/**
 *Function ：绘图
 *Parameter：
 *Return   ：
 *From     ：zhangIvey
 *Version  ：
 */
-(void)HighchartsWeb
{
    NSLog(@"JS 调用原生");
//    NSAssert(nil, @"绘图");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
    // Do any additional setup after loading the view, typically from a nib.
    [self layout];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
