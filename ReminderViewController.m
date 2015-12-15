//
//  ReminderViewController.m
//  HypnoNerd
//
//  Created by Robert Ruttenberg on 12/19/14.
//  Copyright (c) 2014 Robert Ruttenberg. All rights reserved.
//

#import "ReminderViewController.h"


@interface ReminderViewController ()

@property (nonatomic, weak) IBOutlet UIDatePicker *datePicker;

@end

@implementation ReminderViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil
                         bundle:(NSBundle *)nibBundleOrNil
{
    
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self){
        self.tabBarItem.title = @"Reminder";
        
        UIImage *image = [UIImage imageNamed:@"Time.png"];
        
        self.tabBarItem.image = image;
    }
    
    return self;
}


- (IBAction)addReminder:(id)sender{
    
    NSDate *date = self.datePicker.date;
    NSLog(@"Setting a reminder for %@", date);
    
    UILocalNotification *note = [[UILocalNotification alloc] init];
    note.alertBody = @"Hypnotize me!";
    note.fireDate = date;
    
    [[UIApplication sharedApplication] scheduleLocalNotification:note];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"ReminderViewController loaded its view.");
    
    // Do any additional setup after loading the view.
}


@end
