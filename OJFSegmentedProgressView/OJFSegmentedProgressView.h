//
//  OJFSegmentedProgressView.h
//  OJFSegmentedProgressView
//
//  Created by Oliver Foggin on 05/10/13.
//  Copyright (c) 2013 Oliver Foggin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OJFSegmentedProgressView : UIView

@property (nonatomic) NSUInteger numberOfSegments;

- (id)initWithNumberOfSegments:(NSUInteger)numberOfSegments;

@end
