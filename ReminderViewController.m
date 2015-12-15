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

- (IBAction)addReminder:(id)sender{
    
    NSDate *date = self.datePicker.date;
    NSLog(@"Setting a reminder for %@", date);
}

@end
