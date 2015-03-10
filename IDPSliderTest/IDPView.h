//
//  IDPView.h
//  IDPSliderTest
//
//  Created by Anton Kovalyov on 3/10/15.
//  Copyright (c) 2015 Anton Kovalyov. All rights reserved.
//

#import <UIKit/UIKit.h>

@class NMRangeSlider;

@interface IDPView : UIView
@property (nonatomic, strong) IBOutlet NMRangeSlider    *rangeSlider;
@property (nonatomic, strong) IBOutlet UILabel          *lowerValueLabel;
@property (nonatomic, strong) IBOutlet UILabel          *upperValueLabel;

- (void)updateLabelsWithSlider;

@end
