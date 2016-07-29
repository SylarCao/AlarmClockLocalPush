//
//  ViewController.m
//  LocalPush
//
//  Created by sylar on 16/7/29.
//  Copyright © 2016年 sylar. All rights reserved.
//
////////////////////////////////////////////////////////////////////////////////////////////////////////
#import "ViewController.h"
////////////////////////////////////////////////////////////////////////////////////////////////////////
@interface ViewController ()

@end
////////////////////////////////////////////////////////////////////////////////////////////////////////
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)btn1:(id)sender
{
    NSLog(@"btn1");
}

- (void)fun1
{
    UILocalNotification *ll = [[UILocalNotification alloc] init];
    ll.fireDate = [self getDate1300];
//    ll.applicationIconBadgeNumber = [[ReminderHelper Share] GetBadgeNumber]+1;
    ll.soundName = UILocalNotificationDefaultSoundName;
    ll.alertBody = @"body";
    ll.repeatInterval = NSCalendarUnitWeekday;
//    ll.userInfo = [NSDictionary dictionaryWithObjectsAndKeys:
//                   m_title.text,   kReminderTitle,
//                   m_content.text, kReminderContent,
//                   @"0",           kReminderDone,
//                   nil];
    [[UIApplication sharedApplication] scheduleLocalNotification:ll];
}


- (NSDate *)getDate1300
{
    NSString *ss = @"16:41";
    NSDateFormatter *ff = [[NSDateFormatter alloc] init];
    ff.dateFormat = @"HH:mm";
    NSDate *rt = [ff dateFromString:ss];
    return rt;
    
}

@end
