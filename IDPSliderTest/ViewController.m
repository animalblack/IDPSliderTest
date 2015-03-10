//
//  ViewController.m
//  IDPSliderTest
//
//  Created by Anton Kovalyov on 3/10/15.
//  Copyright (c) 2015 Anton Kovalyov. All rights reserved.
//

#import "ViewController.h"

#import "IDPView.h"

@interface ViewController ()
@property (nonatomic, readonly) IDPView     *mainView;

@end

@implementation ViewController

@dynamic mainView;

#pragma mark -
#pragma mark Accessors

- (IDPView *)mainView {
    if ([self isViewLoaded] && [self.view isKindOfClass:[IDPView class]]) {
        return (IDPView *)self.view;
    }
    
    return nil;
}

#pragma mark -
#pragma mark Interface Handling

- (IBAction)onRangeSliderValueChange:(id)sender {
    [self.mainView updateLabelsWithSlider];
}

@end
