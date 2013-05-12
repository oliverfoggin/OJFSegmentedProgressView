//
//  OJFSegmentedProgressView.m
//  OJFSegmentedProgressView
//
//  Created by Oliver Foggin on 05/10/13.
//  Copyright (c) 2013 Oliver Foggin. All rights reserved.
//

#import "OJFSegmentedProgressView.h"

@implementation OJFSegmentedProgressView

- (id)initWithNumberOfSegments:(NSUInteger)numberOfSegments
{
    self = [super init];
    if (self) {
        // Add customisation here...
        self.numberOfSegments = numberOfSegments;
        self.backgroundColor = [UIColor clearColor];
        self.contentMode = UIViewContentModeRedraw;
        self.segmentSeparatorSize = 5.0;
    }
    return self;
}

- (id)init
{
    return [self initWithNumberOfSegments:10];
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        self.numberOfSegments = 10;
        self.contentMode = UIViewContentModeRedraw;
        self.segmentSeparatorSize = 5.0;
    }
    return self;
}

- (void)awakeFromNib
{
    [super awakeFromNib];

    self.backgroundColor = [UIColor clearColor];
    self.numberOfSegments = 10;
    self.contentMode = UIViewContentModeRedraw;
    self.segmentSeparatorSize = 5.0;
}

- (void)setSegmentSeparatorSize:(CGFloat)segmentSeparatorSize
{
    if (segmentSeparatorSize <= 1) {
        segmentSeparatorSize = 1;
    }
    _segmentSeparatorSize = segmentSeparatorSize;
    [self setNeedsDisplay];
}

- (void)setNumberOfSegments:(NSUInteger)numberOfSegments
{
    if (numberOfSegments <= 0) {
        numberOfSegments = 1;
    }
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
    float segmentTotalSize = self.frame.size.width - self.segmentSeparatorSize * (self.numberOfSegments - 1);

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
        float x = segment * (self.segmentSeparatorSize + width);
        float y = 0;
        float height = self.frame.size.height;

        CGContextFillRect(context, CGRectMake(x, y, width, height));
    }
}

@end
