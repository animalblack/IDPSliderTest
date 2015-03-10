//
//  IDPView.m
//  IDPSliderTest
//
//  Created by Anton Kovalyov on 3/10/15.
//  Copyright (c) 2015 Anton Kovalyov. All rights reserved.
//

#import "IDPView.h"

#import "NMRangeSlider.h"

static const float kIPDViewMinSliderValue   = 0.0f;
static const float kIPDViewMaxSliderValue   = 100.0f;

@implementation IDPView

#pragma mark -
#pragma mark Overloaded Methods

- (void)awakeFromNib {
    [super awakeFromNib];
    
    NMRangeSlider *slider = self.rangeSlider;
    slider.minimumValue = kIPDViewMinSliderValue;
    slider.maximumValue = kIPDViewMaxSliderValue;
    slider.upperValue = slider.maximumValue;
    [self updateLabelsWithSlider];
}

#pragma mark -
#pragma mark Public

- (void)updateLabelsWithSlider {
    NMRangeSlider *slider = self.rangeSlider;

    self.lowerValueLabel.text = [NSString stringWithFormat:@"%.1f", slider.lowerValue];
    self.upperValueLabel.text = [NSString stringWithFormat:@"%.1f", slider.upperValue];
}

@end
