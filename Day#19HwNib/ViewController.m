//
//  ViewController.m
//  Day#19HwNib
//
//  Created by lalaleelala on 6/15/15.
//  Copyright (c) 2015 lalaleelala. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) UIView *outsideView;

@end

@implementation ViewController
- (IBAction)pressShowView:(id)sender {
   
    if ( rem == YES) {
    self.outsideView = [[[NSBundle mainBundle] loadNibNamed:@"View" owner:self options:nil] objectAtIndex:0];
    self.outsideView.frame = CGRectMake(20.0f, 200.0f, 200.0f, 150.0f);
    [self.view addSubview:self.outsideView];
        rem = NO;
    }
        else{
            [self.outsideView removeFromSuperview];
            rem = YES;
            }
        
}

- (void)viewDidLoad {
    [super viewDidLoad];
    rem = YES;
    // Do any additional setup after loading the view, typically from a nib.
}

- (void) awakeFromNib
{
    [super awakeFromNib];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
