//
//  HDCollectionDataSource.m
//
//  Created by Harshit Daftary on 19/08/14.
//

#import "HDCollectionDataSource.h"

@implementation HDCollectionDataSource

- (id)init
{
    return nil;
}

- (id)initWithItems:(NSArray *)anItems cellIdentifier:(NSString *)aCellIdentifier configureCellBlock:(CollectionViewCellConfigureBlock)aConfigureCellBlock
{
    self = [super init];
    if (self)
    {
        self.arrItems = anItems;
        self.strCellIdentifier = aCellIdentifier;
        self.configureCellBlock = [aConfigureCellBlock copy];
    }
    return self;
}

- (id)initWithItems:(NSArray *)anItems multipleCellBlock:(MultipleCellIdentifierBlock)pMultipleCellIdBlock configureCellBlock:(CollectionViewCellConfigureBlock)aConfigureCellBlock
{
    self = [super init];
    if (self)
    {
        self.arrItems = anItems;
        self.configureCellBlock = [aConfigureCellBlock copy];
        self.cellIdentifierForCellBlock = [pMultipleCellIdBlock copy];
    }
    return self;
}

- (id)itemAtIndexPath:(NSIndexPath*)indexPath
{
    return _arrItems[(NSUInteger)indexPath.item];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return _arrItems.count;
}

- (UICollectionViewCell*)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    id item = [self itemAtIndexPath:indexPath];
    
    if (_cellIdentifierForCellBlock)
        _strCellIdentifier = _cellIdentifierForCellBlock(item,indexPath);
    
    id cell = [collectionView dequeueReusableCellWithReuseIdentifier:_strCellIdentifier forIndexPath:indexPath];
    _configureCellBlock(cell,item,indexPath);
    return cell;
}



@end