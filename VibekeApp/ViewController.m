//
//  ViewController.m
//  VibekeApp
//
//  Created by Mikael Mortensen on 5/19/13.
//  Copyright (c) 2013 Mikael Mortensen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _progress_aar.progress = 0.0f;
    _progress_maaned.progress = 0.0f;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)Har_trent:(id)sender {
    NSDate *date = [NSDate date];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy-MM-dd"];
    NSDate *refdate = [formatter dateFromString:@"2013-01-01"];
    unsigned flags = NSDayCalendarUnit;
    NSDateComponents *difference = [[NSCalendar currentCalendar]
                                    components:flags
                                    fromDate:refdate toDate:date options:0];
    
    // This just logs your output
    NSLog(@"Start Date, %@", refdate);
    NSLog(@"End Date, %@", date);
    NSInteger day = [difference day];
    NSLog(@"day, %ld", (long)day);
    day = day % 365;
    count_training_list[day] += 1;
    
    // Count number of excercises last 30 days
    count_month = 0;
    count_year = 0;
    for(int i=day; i>(day-30); i--)
    {
        int k = i;
        if (i < 0) k = 365 + i;
        count_month += count_training_list[k];
    }
    
    // Count number of exercises last 365 days
    for(int i=day; i>(day-365); i--)
    {
        int k = i;
        if (i < 0) k = 365 + i;
        count_year += count_training_list[k];
    }
    printf("[%i %i] ", count_training_list[day], day);
        
    _siste_aar.text = [NSString stringWithFormat:@"%i", count_year];
    _siste_maaned.text = [NSString stringWithFormat:@"%i", count_month];
    setprogress = count_year / 100.0f;
    [_progress_aar setProgress: setprogress] ;
    setprogress = count_month / 10.0f;
    [_progress_maaned setProgress: setprogress] ;
}
@end
