//
//  ViewController.h
//  TimeRecord
//
//  Created by Dykes Wu on 2018/3/10.
//  Copyright © 2018年 Dykes Wu. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController
{
    NSTimer *myTimer;
    BOOL running;
    int count;
    int hour;
    int min;
    int sec;
}



@property (weak) IBOutlet NSTextField *timerLabel;
@property (weak) IBOutlet NSButton *startBtn;
@property (weak) IBOutlet NSButton *endBtn;



- (IBAction)startBtnPushed:(id)sender;
- (IBAction)endBtnPushed:(id)sender;



- (void)updateTimer;



@end

