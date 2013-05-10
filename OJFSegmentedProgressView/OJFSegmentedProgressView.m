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
    }
    return self;
}

@end
