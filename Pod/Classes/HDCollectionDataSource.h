//
//  HDCollectionDataSource.h
//
//  Created by Harshit Daftary on 19/08/14.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef void (^CollectionViewCellConfigureBlock)(id cell, id item, NSIndexPath *indexPath);
typedef NSString*(^MultipleCellIdentifierBlock)(id item, NSIndexPath *indexPath);

@interface HDCollectionDataSource : NSObject <UICollectionViewDataSource>

@property (strong, nonatomic) NSArray *arrItems;
@property (strong, nonatomic) NSString *strCellIdentifier;
@property (copy, nonatomic) CollectionViewCellConfigureBlock configureCellBlock;
@property (copy, nonatomic) MultipleCellIdentifierBlock cellIdentifierForCellBlock;

- (id)initWithItems:(NSArray *)anItems cellIdentifier:(NSString *)aCellIdentifier configureCellBlock:(CollectionViewCellConfigureBlock)aConfigureCellBlock;
- (id)initWithItems:(NSArray *)anItems multipleCellBlock:(MultipleCellIdentifierBlock)pMultipleCellIdBlock configureCellBlock:(CollectionViewCellConfigureBlock)aConfigureCellBlock;
- (id)itemAtIndexPath:(NSIndexPath *)indexPath;

@end
