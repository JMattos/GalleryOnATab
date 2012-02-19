//
//  StoryBoardFGalleryViewController.m
//  YouTubeTableView
//
//  Created by John Mattos on 2/19/12.
//  Copyright (c) 2012 Gladiator Apps L.L.C. All rights reserved.
//

#import "StoryBoardFGalleryViewController.h"
#import "DataModel.h"

@interface StoryBoardFGalleryViewController ()

@end

@implementation StoryBoardFGalleryViewController
@synthesize dataModel=_dataModel;
@synthesize networkGallery=_networkGallery;

- (id)initWithCoder:(NSCoder *)aDecoder{
    NSLog(@"in initWithCoder of StoryBoardFGalleryViewController");
    self=[super initWithCoder:aDecoder];
    if (self) {
        self = [super initWithNibName:nil bundle:nil];
    }
    self.dataModel = [[DataModel alloc]init];
    self.dataModel.delegate=self;
    self.photoSource=self;
    return self;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - DataModelDelegate Method
- (void) dataModelDataChanged:(DataModel *)dataModel{
    // Unused in this dummy scenario
}

#pragma mark - FGalleryViewControllerDelegate Methods
- (int)numberOfPhotosForPhotoGallery:(FGalleryViewController *)gallery{
    int num = [self.dataModel.imageURLs count];
	return num;
}

- (FGalleryPhotoSourceType)photoGallery:(FGalleryViewController *)gallery sourceTypeForPhotoAtIndex:(NSUInteger)index{
    return FGalleryPhotoSourceTypeNetwork;
}

- (NSString*)photoGallery:(FGalleryViewController *)gallery captionForPhotoAtIndex:(NSUInteger)index{
    NSString *caption;
    caption = [self.dataModel.imageCaptions objectAtIndex:index];
	return caption;
}

- (NSString*)photoGallery:(FGalleryViewController *)gallery urlForPhotoSize:(FGalleryPhotoSize)size atIndex:(NSUInteger)index {
    return [self.dataModel.imageURLs objectAtIndex:index];
}
@end
