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
    _progress_aar.progress = 0.0;
    _progress_maaned.progress = 0.0;
    //setprogress = 0.5;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)Har_trent:(id)sender {
    count_month++;
    count_year++;
    _siste_aar.text = [NSString stringWithFormat:@"%i", count_year];
    _siste_maaned.text = [NSString stringWithFormat:@"%i", count_month];
    setprogress = count_year / 100.0f;
    [_progress_aar setProgress: setprogress] ;
    setprogress = count_month / 10.0f;
    [_progress_maaned setProgress: setprogress] ;
}
@end
