//
//  ViewController.m
//  AlertView
//
//  Created by Alex.Lingjiahua on 2022/5/6.
//

#import "ViewController.h"
#import "RemoveView.h"

@interface ViewController ()<ADSelegate>

@property (nonatomic, strong) UIView *headview;
@property (nonatomic, strong) UIView *backView;

@property (nonatomic, strong) UIButton *clickBtn;
@property (nonatomic, strong) UIButton *button6;
@property (nonatomic, strong) UIButton *button3;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    [self baseUI];
}

- (void)baseUI {
    
    self.clickBtn = [[UIButton alloc] init];
    self.clickBtn.frame = CGRectMake(34, 57, 70, 70);
    self.clickBtn.backgroundColor = [UIColor redColor];
    self.clickBtn.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.16].CGColor;
    self.clickBtn.layer.shadowOffset = CGSizeMake(0,2);
    self.clickBtn.layer.shadowRadius = 3;
    self.clickBtn.layer.cornerRadius = 33.7;
    [self.clickBtn addTarget:self action:@selector(tapUserImage:) forControlEvents:UIControlEventTouchUpInside];
    self.clickBtn.layer.shadowOpacity = 1;
    [self.view addSubview:self.clickBtn];
    
    self.button6 = [[UIButton alloc] init];
    self.button6.frame = CGRectMake(34, 200, 70, 70);
    self.button6.backgroundColor = [UIColor yellowColor];
    self.button6.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.16].CGColor;
    self.button6.layer.shadowOffset = CGSizeMake(0,2);
    self.button6.layer.shadowRadius = 3;
    self.button6.layer.cornerRadius = 33.7;
    [self.button6 addTarget:self action:@selector(showAlertButton6:) forControlEvents:UIControlEventTouchUpInside];
    self.button6.layer.shadowOpacity = 1;
    [self.view addSubview:self.button6];
    
    self.button3 = [[UIButton alloc] init];
    self.button3.frame = CGRectMake(34, 330, 70, 70);
    self.button3.backgroundColor = [UIColor yellowColor];
    self.button3.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.16].CGColor;
    self.button3.layer.shadowOffset = CGSizeMake(0,2);
    self.button3.layer.shadowRadius = 3;
    self.button3.layer.cornerRadius = 33.7;
    [self.button3 addTarget:self action:@selector(showAlert:) forControlEvents:UIControlEventTouchUpInside];
    self.button3.layer.shadowOpacity = 1;
    [self.view addSubview:self.button3];
    
   
}

- (void)showAlertButton6: (UIButton *)sender {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:nil message:@"四度方能干啥都" preferredStyle:UIAlertControllerStyleActionSheet];
    alert.view.backgroundColor = [UIColor blackColor];
    alert.view.frame = CGRectMake(30, 100, 200, 80);
    alert.view.maskView.backgroundColor = [UIColor redColor];

    alert.view.layer.masksToBounds = YES;
    
    alert.view.layer.cornerRadius = 12;
    [self presentViewController:alert animated:YES completion:nil];
//    [self performSelector:@selector(dimissAlert:) withObject: alert afterDelay:2.0];
}

-(void)tapUserImage: (UIButton *)sender {
  
    self.backView = [[UIView alloc] init];
    self.backView.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    self.backView.maskView.backgroundColor = [UIColor redColor];
    self.backView.alpha = 0.3;
    self.backView.userInteractionEnabled = false;
    self.backView.layer.masksToBounds = YES;
    self.backView.backgroundColor = [UIColor colorWithRed:246/255.0 green:180/255.0 blue:2/255.0 alpha:1.0];
    [self.view bringSubviewToFront:self.backView];
    [self performSelector:@selector(hiddenBackView) withObject: self.backView afterDelay:2.0];
    
    self.headview = [[UIView alloc] init];
    self.headview.frame = CGRectMake(30, (self.view.frame.size.height) * 0.8, self.view.frame.size.width - 60, 100);
    self.headview.maskView.backgroundColor = [UIColor redColor];
    self.headview.alpha = 0.3;
    self.headview.layer.cornerRadius = 13;
    self.headview.layer.masksToBounds = YES;
    self.headview.backgroundColor = [UIColor colorWithRed:246/255.0 green:180/255.0 blue:2/255.0 alpha:1.0];
    [self.view addSubview:self.headview];
    [self performSelector:@selector(hiddenView) withObject: self.headview afterDelay:2.0];
}

- (void) hiddenView {
    self.headview.hidden = YES;
 
}

- (void) hiddenBackView {
    self.backView.hidden = YES;
}

/////
///


- (void)showAlert:(UIButton *) sender {
    
    RemoveView *lightview = [[RemoveView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width , self.view.frame.size.height)];
    lightview.delegate = self;
    [[[[UIApplication sharedApplication] windows] lastObject] addSubview:lightview];
    
}



- (void) dimissAlert:(UIAlertView *)alert {
    if(alert){
        
        [alert dismissWithClickedButtonIndex:[alert cancelButtonIndex] animated:YES];
    }
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
