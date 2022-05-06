//
//  RemoveView.m
//  AlertView
//
//  Created by Alex.Lingjiahua on 2022/5/6.
//

#import "RemoveView.h"

@interface RemoveView()

@property (nonatomic, strong) UIView *CenterView;
@property (nonatomic, strong) UILabel *TopicLab;
@property (nonatomic, strong) UIView *bgView;

@end
@implementation RemoveView

- (id)initWithFrame:(CGRect)frame {
    if ((self = [super initWithFrame:frame])) {
        [self baseUI];
    }
    
    return self;
}

- (void)baseUI {
    self.bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, UIScreen.mainScreen.bounds.size.width, UIScreen.mainScreen.bounds.size.height)];
    self.bgView.backgroundColor = [UIColor grayColor];
    self.bgView.alpha = 0.3;
    [self addSubview:self.bgView];
    
    self.CenterView = [[UIView alloc]initWithFrame:CGRectMake((UIScreen.mainScreen.bounds.size.width-340)/2, (UIScreen.mainScreen.bounds.size.height) * 0.6, 340, 120)];
    self.CenterView.backgroundColor = [UIColor grayColor];
    self.CenterView.layer.cornerRadius = 8;
    self.CenterView.alpha = 0.9;
    self.CenterView.layer.masksToBounds = YES;
    [self addSubview:self.CenterView];
    
    self.TopicLab = [[UILabel alloc]initWithFrame:CGRectMake(15, 10, 310, 100)];
    self.TopicLab.text = @"目前该板块正在维护中，您可通过'支付宝-生活缴费'办理缴费业务，如有疑问可\n拨打公用事业服务热线022-66885890进行咨询。";
    self.TopicLab.numberOfLines = 100;
    self.TopicLab.font=[UIFont fontWithName:@"PingFangSC-Bold" size:11];
    self.TopicLab.textColor = [UIColor whiteColor];
    [self.CenterView addSubview:self.TopicLab];
    
    [self performSelector:@selector(dismiss) withObject: self.CenterView afterDelay:2.0];


}

#pragma mark - 移除此弹窗
/** 移除此弹窗 */
- (void)dismiss {
    [self removeFromSuperview];
}

@end

