//
//  BNRHypnosisViewController.m
//  HypnoNerd
//
//  Created by Arjun Bharadwaj on 3/9/18.
//  Copyright © 2018 Vaadiraj. All rights reserved.
//

#import "BNRHypnosisViewController.h"
#import "BNRHypnosisView.h"

@implementation BNRHypnosisViewController

-(void)loadView {
    CGRect frame = [UIScreen mainScreen].bounds;
    BNRHypnosisView *backgroundView = [[BNRHypnosisView alloc] initWithFrame:frame];
    
    self.view = backgroundView;
}

@end
