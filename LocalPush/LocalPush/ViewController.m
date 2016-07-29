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
    
//    [self fun1];
}

- (void)fun1
{
    // remove all
    [[UIApplication sharedApplication] cancelAllLocalNotifications];
    
    UILocalNotification *ll = [[UILocalNotification alloc] init];
    ll.fireDate = [self getDate1300];
//    ll.applicationIconBadgeNumber = 1;
//    ll.soundName = UILocalNotificationDefaultSoundName;
    ll.soundName = @"dianhuachong.mp3";
    ll.alertBody = @"body";
    ll.repeatInterval = NSCalendarUnitWeekday;
    [[UIApplication sharedApplication] scheduleLocalNotification:ll];
}


- (NSDate *)getDate1300
{
    NSString *ss = @"13:13:13";
    NSDateFormatter *ff = [[NSDateFormatter alloc] init];
    ff.dateFormat = @"HH:mm:ss";
    NSDate *rt = [ff dateFromString:ss];
    return rt;
    
}

@end
