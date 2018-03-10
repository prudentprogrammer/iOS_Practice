//
//  BNRReminderViewController.m
//  HypnoNerd
//
//  Created by Arjun Bharadwaj on 3/9/18.
//  Copyright © 2018 Vaadiraj. All rights reserved.
//

#import "BNRReminderViewController.h"

@interface BNRReminderViewController()
@property (nonatomic, weak) IBOutlet UIDatePicker *datePicker;
@end

@implementation BNRReminderViewController

- (IBAction) addReminder:(id) sender {
    NSDate *date = self.datePicker.date;
    NSLog(@"Setting a reminder for %@", date);
}
@end
