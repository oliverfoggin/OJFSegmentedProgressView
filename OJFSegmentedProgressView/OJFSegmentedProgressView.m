//
//  OJFSegmentedProgressView.m
//  OJFSegmentedProgressView
//
//  Created by Oliver Foggin on 05/10/13.
//  Copyright (c) 2013 Oliver Foggin. All rights reserved.
//

#import "OJFSegmentedProgressView.h"

#define SEGMENT_SEPARATOR_SIZE 5

@implementation OJFSegmentedProgressView

- (id)initWithNumberOfSegments:(NSUInteger)numberOfSegments
{
    self = [super init];
    if (self) {
        // Add customisation here...
        self.numberOfSegments = numberOfSegments;

        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

- (id)init
{
    return [self initWithNumberOfSegments:10];
}

- (id)initWithFrame:(CGRect)frame
{
    self = [self initWithNumberOfSegments:10];
    self.frame = frame;
}

- (void)setNumberOfSegments:(NSUInteger)numberOfSegments
{
    _numberOfSegments = numberOfSegments;
    [self setNeedsDisplay];
}

- (void)setProgress:(float)progress
{
    int oldSegments = [self numberOfFullSegments];

    if (progress > 1.0) {
        _progress = 1.0;
    } else if (progress < 0.0) {
        _progress = 0.0;
    } else {
        _progress = progress;
    }

    if ([self numberOfFullSegments] != oldSegments) {
        [self setNeedsDisplay];
    }
}

- (UIColor *)progressTintColor
{
    if (_progressTintColor == nil) {
        _progressTintColor = [UIColor blueColor];
    }
    return _progressTintColor;
}

- (UIColor *)trackTintColor
{
    if (_trackTintColor == nil) {
        _trackTintColor = [UIColor lightGrayColor];
    }
    return _trackTintColor;
}

- (int)numberOfFullSegments
{
    return (int)roundf(self.numberOfSegments * self.progress);
}

- (float)segmentSize
{
    float segmentTotalSize = self.frame.size.width - SEGMENT_SEPARATOR_SIZE * (self.numberOfSegments - 1);

    return segmentTotalSize / self.numberOfSegments;
}

- (void)drawRect:(CGRect)rect
{
    CGContextRef context = UIGraphicsGetCurrentContext();

    [self.progressTintColor set];

    for (int segment = 0; segment < self.numberOfSegments; segment++) {
        if (segment >= [self numberOfFullSegments]) {
            [self.trackTintColor set];
        }

        float width = [self segmentSize];
        float x = segment * (SEGMENT_SEPARATOR_SIZE + width);
        float y = 0;
        float height = self.frame.size.height;

        CGContextFillRect(context, CGRectMake(x, y, width, height));
    }
}

@end
