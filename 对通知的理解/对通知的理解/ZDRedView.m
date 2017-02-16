//
//  ZDRedView.m
//  对通知的理解
//
//  Created by zhudong on 2017/2/15.
//  Copyright © 2017年 zhudong. All rights reserved.
//

#import "ZDRedView.h"

@interface ZDRedView ()
@property (nonatomic, strong) UILabel *label;
@end

@implementation ZDRedView
- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor redColor];
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(frame.origin.x, frame.origin.y + 10, frame.size.width - 20, 50)];
        self.label = label;
        label.textAlignment = NSTextAlignmentCenter;
        [self addSubview:label];
        label.text = @"刚开始";
    }
    return self;
}

- (void)changeLabel{
    self.label.text = @"改变了";
    self.label.backgroundColor = [UIColor greenColor];
}
@end
