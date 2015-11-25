//
//  MainViewController.m
//  Music
//
//  Created by Ray on 15/6/25.
//  Copyright (c) 2015年 Ray. All rights reserved.
//

#import "MainViewController.h"
#import <AudioToolbox/AudioToolbox.h>
@interface MainViewController ()
{
    SystemSoundID musicID;
}
@property (strong, nonatomic) IBOutlet UIButton *playButton;
@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    NSString *music = [[NSBundle mainBundle]pathForResource:@"Angel" ofType:@"mp3"];
    NSURL *musicUrl = [NSURL fileURLWithPath:music];
    
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)musicUrl, &musicID);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clickPlayBtn:(id)sender {
//    AudioServicesPlaySystemSound(musicID);
    AudioServicesPlaySystemSound(musicID);
//    AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);
//    AudioServicesPlaySystemSound(kTimePitchParam_Rate);
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
