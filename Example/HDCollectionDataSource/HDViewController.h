//
//  HDViewController.h
//  HDCollectionDataSource
//
//  Created by HarshitDaftary on 09/05/2014.
//  Copyright (c) 2014 HarshitDaftary. All rights reserved.
//

#import <UIKit/UIKit.h>

@class HDCollectionDataSource;
@interface HDViewController : UIViewController <UICollectionViewDelegate>


@property (strong, nonatomic) HDCollectionDataSource *objCollectionDataSource;
@property (weak, nonatomic) IBOutlet UICollectionView *collectionItems;
@property (strong, nonatomic) NSMutableArray *arrItems;

@end
