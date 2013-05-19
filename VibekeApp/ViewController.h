//
//  ViewController.h
//  VibekeApp
//
//  Created by Mikael Mortensen on 5/19/13.
//  Copyright (c) 2013 Mikael Mortensen. All rights reserved.
//

#import <UIKit/UIKit.h>

int count_year;
int count_month;

@interface ViewController : UIViewController
- (IBAction)Har_trent:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *siste_aar;
@property (weak, nonatomic) IBOutlet UILabel *siste_maaned;

@end
