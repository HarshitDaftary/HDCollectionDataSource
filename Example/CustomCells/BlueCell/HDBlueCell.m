//
//  HDBlueCell.m
//  HDTableDataSource
//
//  Created by Administrator on 05/09/14.
//  Copyright (c) 2014 HarshitDaftary. All rights reserved.
//

#import "HDBlueCell.h"
#import "ClsBlue.h"

@implementation HDBlueCell


- (void)awakeFromNib
{
    // Initialization code
}


-(void)configureCell:(ClsBlue*)pobjBlue
{
    _lblTitle.text = pobjBlue.strTitle;
}

@end
