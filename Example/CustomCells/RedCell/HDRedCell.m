//
//  HDRedCell.m
//  HDTableDataSource
//
//  Created by Administrator on 05/09/14.
//  Copyright (c) 2014 HarshitDaftary. All rights reserved.
//

#import "HDRedCell.h"
#import "ClsRed.h"

@implementation HDRedCell

- (void)awakeFromNib
{
    // Initialization code
}

-(void)configureCell:(ClsRed*)pobjRed
{
    _lblName.text = pobjRed.strName;
    _lblPoints.text = [NSString stringWithFormat:@"%d",pobjRed.intPoint];
}

@end
