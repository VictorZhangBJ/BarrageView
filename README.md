# BarrageView
一个弹幕view，集成简单
引入头文件到你的ViewController中，初始化BarrageView，并给定初始Frame，然后把评论数组赋值给BarrageView.commentArray,
最后打开弹幕，`openBarrage`

```
    self.barrageView = [[BarrageView alloc]initWithFrame:self.view.bounds];
    [self.view addSubview:_barrageView];
    self.barrageView.commentArray = [NSMutableArray arrayWithObjects:@"关弹幕 保智商",@"我不服",@"我的鱼丸呢我擦",     @"摄像头挡住了",@"23333333333", nil];
    [self.barrageView openBarrage];
```
