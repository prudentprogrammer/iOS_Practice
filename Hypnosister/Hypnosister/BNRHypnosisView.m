//
//  BNRHypnosisView.m
//  Hypnosister
//
//  Created by Arjun Bharadwaj on 3/6/18.
//  Copyright © 2018 Vaadiraj. All rights reserved.
//

#import "BNRHypnosisView.h"

@implementation BNRHypnosisView

-(instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if(self) {
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    CGRect bounds = self.bounds;
    
    CGPoint center;
    center.x = bounds.origin.x + bounds.size.width / 2.0;
    center.y = bounds.origin.y + bounds.size.height / 2.0;
    
    float radius = MIN(bounds.size.width, bounds.size.height) / 2.0;
    
    UIBezierPath *path = [[UIBezierPath alloc] init];
    
    [path addArcWithCenter:center radius:radius startAngle:0.0 endAngle:M_PI*2.0 clockwise:YES];
    path.lineWidth = 10;
    // Actually draw the line using stroke
    
    [[UIColor lightGrayColor] setStroke];
    [path stroke];
    
}

@end
