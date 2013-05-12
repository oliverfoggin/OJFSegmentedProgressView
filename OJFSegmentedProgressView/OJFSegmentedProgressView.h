//
//  OJFSegmentedProgressView.h
//  OJFSegmentedProgressView
//
//  Created by Oliver Foggin on 05/10/13.
//  Copyright (c) 2013 Oliver Foggin. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum {
    OJFSegmentedProgressViewStyleDiscrete,
    OJFSegmentedProgressViewStyleContinuous,
} OJFSegmentedProgressViewStyle;

@interface OJFSegmentedProgressView : UIView

@property (nonatomic) NSUInteger numberOfSegments;
@property (nonatomic) CGFloat segmentSeparatorSize;

@property (nonatomic) OJFSegmentedProgressViewStyle style;

@property (nonatomic) float progress;
@property (nonatomic, strong) UIColor *progressTintColor;
@property (nonatomic, strong) UIColor *trackTintColor;

- (id)initWithNumberOfSegments:(NSUInteger)numberOfSegments;

@end
