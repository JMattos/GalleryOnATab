//
//  StoryBoardFGalleryViewController.h
//  YouTubeTableView
//
//  Created by John Mattos on 2/19/12.
//  Copyright (c) 2012 Gladiator Apps L.L.C. All rights reserved.
//

#import "FGalleryViewController.h"
#import "DataModel.h"

@interface StoryBoardFGalleryViewController : FGalleryViewController <DataModelDelegate, FGalleryViewControllerDelegate>
@property (nonatomic, strong) DataModel *dataModel;
@property (nonatomic, strong) FGalleryViewController *networkGallery;
@end
