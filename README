#OJFSegmentedProgressView#

OJFSegmentedProgressView is a replacement for UIProgressView that displays in segments.

It has been written to have all the same properties and methods as UIProgressView (except the setProgress:animated: and the initWithStyle: constructor).

##Style enum##

    typedef enum {
        OJFSegmentedProgressViewStyleDiscrete,
        OJFSegmentedProgressViewStyleContinuous,
    } OJFSegmentedProgressViewStyle;

##Properties##

1. OJFSegmentedProgressViewStyle style
1. NSUInteger numberOfSegments
1. float segmentSeparatorSize
1. float progress
1. UIColor trackTintColor
1. UIColor progressTintColor

##Constructor##

- (id)initWithNumberOfSegments:(NSUInteger)numberOfSegments;

##Example Usage##

    - (void)viewDidLoad
    {
        [super viewDidLoad];

        OJFSegmentedProgressView *progressView = [[OJFSegmentedProgressView alloc] initWithNumberOfSegments:13];
        [progressView setFrame:CGRectMake(20, 100, 280, 20)];
        [progressView setTrackTintColor:[UIColor lightGreyColor]];
        [progressView setProgressTintColor:[UIColor darkGreyColor]];
        [progressView setStyle:OJFSegmentedProgressViewStyleContinuous];
        [self.view addSubView:progressView];
    }

##CocoaPods text##

    pod 'OJFSegmentedProgressView', '~> 0.0.1'
