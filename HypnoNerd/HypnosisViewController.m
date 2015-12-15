//
//  HypnosisViewController.m
//  HypnoNerd
//
//  Created by Robert Ruttenberg on 12/19/14.
//  Copyright (c) 2014 Robert Ruttenberg. All rights reserved.
//

#import "HypnosisViewController.h"
#import "HypnosisView.h"

@interface HypnosisViewController ()

@end

@implementation HypnosisViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil
                         bundle:(NSBundle *)nibBundleOrNil
{

   self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self){
        self.tabBarItem.title = @"Hypnotize";
        
        UIImage *image = [UIImage imageNamed:@"Hypno.png"];
        
        self.tabBarItem.image = image;
    }
    
    return self;
}

- (void)loadView{
    
    CGRect frame = [UIScreen mainScreen].bounds;
    HypnosisView *backgroundView = [[HypnosisView alloc] initWithFrame:frame];
    
    self.view = backgroundView;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"HypnosisViewController loaded its view.");
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
