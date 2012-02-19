//
//  DataModel.m
//  YouTubeTableView
//
//  Created by John Mattos on 2/12/12.
//  Copyright (c) 2012 Gladiator Apps L.L.C. All rights reserved.
//

#import "DataModel.h"

@interface DataModel()
@end

@implementation DataModel
@synthesize delegate=_delegate;
@synthesize imageURLs=_imageURLs;
@synthesize imageCaptions=_imageCaptions;

- (void) loadDummyRemoteImages{
    self.imageCaptions = [[NSArray alloc] initWithObjects:@"Frosty Spiderweb",@"Happy New Year!",nil];

    self.imageURLs = [[NSArray alloc] initWithObjects:@"http://farm6.static.flickr.com/5042/5323996646_9c11e1b2f6_b.jpg", @"http://farm6.static.flickr.com/5007/5311573633_3cae940638.jpg",nil];
}


-(id) init{
    self = [super init];
    if (self) {
        [self loadDummyRemoteImages];
    }
    return self;
}

@end
