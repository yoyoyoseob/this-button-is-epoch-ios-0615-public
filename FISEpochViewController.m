//
//  FISEpochViewController.m
//  EpochButton
//
//  Created by Yoseob Lee on 6/15/15.
//  Copyright (c) 2015 FIS. All rights reserved.
//

#import "FISEpochViewController.h"

@interface FISEpochViewController ()
@property (weak, nonatomic) IBOutlet UILabel *epochLabel;

- (IBAction)epochButton:(id)sender;

@end

@implementation FISEpochViewController

- (void)viewDidLoad {
    [super viewDidLoad];
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

- (IBAction)epochButton:(id)sender
{
    //NSNumber *currentEpochTime = [NSNumber numberWithDouble:[self epochMethod]];
    NSString *currentEpochTime = [NSString stringWithFormat:@"%lf", [self epochMethod]];
    self.epochLabel.text = currentEpochTime;
    self.epochLabel.hidden = NO;
}

-(double)epochMethod
{
    return [[NSDate date] timeIntervalSince1970];
}
@end
