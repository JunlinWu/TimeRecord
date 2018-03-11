//
//  ViewController.m
//  TimeRecord
//
//  Created by Dykes Wu on 2018/3/10.
//  Copyright © 2018年 Dykes Wu. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
@synthesize timerLabel,startBtn,endBtn;

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
    
    running = NO;
    count = 0;
    hour = floor(count/60/60);
    min = floor((count/60)%60);
    sec = count % 60;
    timerLabel.stringValue=@"00:00:00";
    //[timerLabel setStringValue:@"00:00:00"];
    
    //startBtn.layer.cornerRadius = 45;
    //endBtn.layer.cornerRadius = 45;
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


- (IBAction)startBtnPushed:(id)sender {
    if (running == NO) {
        running = YES;
        [startBtn setTitle:@"Stop"];
        
        if (myTimer == nil) {
            myTimer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(updateTimer) userInfo:nil repeats:YES];
        }
    } else {
        [self stopTimer];
    }
}

- (IBAction)endBtnPushed:(id)sender {
    [self stopTimer];
    count = 0;
    timerLabel.stringValue = @"00:00:00";
}

- (void)stopTimer{
    running = NO;
    [myTimer invalidate];
    myTimer = nil;
    [startBtn setTitle:@"Start"];
}


- (void)updateTimer {
    count++;
    hour = floor(count/60/60);
    min = floor((count/60)%60);
    sec = count % 60;
    
    if (sec >= 60) {
        sec = sec % 60;
    }
    
    timerLabel.stringValue = [NSString stringWithFormat: @"%02d:%02d:%02d", hour, min, sec];
}
@end
