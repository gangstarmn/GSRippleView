//
//  GSRippleView.m
//  GSRippleView
//
//  Created by Gantulga on 5/4/16.
//  Copyright © 2016 ZTech LLC. All rights reserved.
//

#import "GSRippleView.h"

@implementation GSRippleView
{
    MDRippleLayer *mdLayer;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/


- (id) initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self awakeFromNib];
    }
    return self;
}

- (void) awakeFromNib {
    [super awakeFromNib];
    if (!_rippleColor)
        _rippleColor = [UIColor colorWithWhite:0.9 alpha:1];
    mdLayer = [[MDRippleLayer alloc] initWithSuperLayer:self.layer];
    [mdLayer setEffectColor:_rippleColor];
    mdLayer.enableElevation = false;
    mdLayer.effectSpeed = 300;
}

- (void)setRippleColor:(UIColor *)rippleColor {
    _rippleColor = rippleColor;
    [mdLayer setEffectColor:rippleColor];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [super touchesBegan:touches withEvent:event];
    CGPoint point = [touches.allObjects[0] locationInView:self];
    [mdLayer startEffectsAtLocation:point];
}

- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event {
    [super touchesCancelled:touches withEvent:event];
    [mdLayer stopEffects];
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    [super touchesEnded:touches withEvent:event];
    [mdLayer stopEffects];
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    [super touchesMoved:touches withEvent:event];
    [mdLayer stopEffects];
}

@end
