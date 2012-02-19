//
//  DataModel.h
//  YouTubeTableView
//
//  Created by John Mattos on 2/12/12.
//  Copyright (c) 2012 Gladiator Apps L.L.C. All rights reserved.
//

@class DataModel;

@protocol DataModelDelegate <NSObject>
@optional
-(void) dataModelDataChanged:(DataModel *)dataModel;
@end

@interface DataModel : NSObject
@property (nonatomic, strong) NSArray *imageURLs;
@property (nonatomic, strong) NSArray *imageCaptions;
@property (nonatomic, weak) id <DataModelDelegate> delegate;
@end
