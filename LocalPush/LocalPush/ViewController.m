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

@property (nonatomic, weak) IBOutlet UIButton *btnOne;

@end
////////////////////////////////////////////////////////////////////////////////////////////////////////
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self setInitialValue];
}

- (void)setInitialValue
{
//    NSDateFormatter *ff = [[NSDateFormatter alloc] init];
//    ff.dateFormat = @"yyyy-MM-dd HH:mm";
//    NSDate *d1 = [ff dateFromString:@"2017-08-24 09:39"];
//    NSComparisonResult result = [d1 compare:[NSDate date]];
//    if (result == NSOrderedAscending)
//    {
//        _btnOne.hidden = YES;
//    }
//    else
//    {
//        _btnOne.hidden = NO;
//    }
    
    _btnOne.hidden = YES;
}

- (IBAction)btn1:(id)sender
{
    NSLog(@"btn2");
    
//    [self fun1];
    
//    [self fun2];
}

- (void)fun2
{
    // remove all
    [[UIApplication sharedApplication] cancelAllLocalNotifications];
    
    UILocalNotification *ll = [[UILocalNotification alloc] init];
    ll.fireDate = [self getDate1400];
//    ll.soundName = @"dianhuachong.mp3";
    ll.alertBody = @"body";
    ll.repeatInterval = NSCalendarUnitWeekday;
    [[UIApplication sharedApplication] scheduleLocalNotification:ll];
}

- (void)fun1
{
    // remove all
    [[UIApplication sharedApplication] cancelAllLocalNotifications];
    
    UILocalNotification *ll = [[UILocalNotification alloc] init];
    ll.fireDate = [self getDate1300];
    ll.soundName = @"dianhuachong.mp3";
    ll.alertBody = @"body";
    ll.repeatInterval = NSCalendarUnitWeekday;
    [[UIApplication sharedApplication] scheduleLocalNotification:ll];
}


- (NSDate *)getDate1400
{
    NSString *ss = @"15:06:40";
    NSDateFormatter *ff = [[NSDateFormatter alloc] init];
    ff.dateFormat = @"HH:mm:ss";
    NSDate *rt = [ff dateFromString:ss];
    return rt;
    
}


- (NSDate *)getDate1300
{
    NSString *ss = @"13:10:10";
    NSDateFormatter *ff = [[NSDateFormatter alloc] init];
    ff.dateFormat = @"HH:mm:ss";
    NSDate *rt = [ff dateFromString:ss];
    return rt;
    
}

@end
