//
//  CollectionViewCell.m
//  CollectionView-nib
//
//  Created by chenyufeng on 15/10/30.
//  Copyright © 2015年 chenyufengweb. All rights reserved.
//

#import "CollectionViewCell.h"

#define UISCREEN_WIDTH ([[UIScreen mainScreen] bounds].size.width)
#define CELL_WIDTH (([[UIScreen mainScreen] bounds].size.width - 40) / 3)

@implementation CollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame
{
  self = [super initWithFrame:frame];
  if (self) {
    

    //这里需要初始化ImageView；
    self.imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, (UISCREEN_WIDTH - 40) / 3, (UISCREEN_WIDTH - 40) / 3)];
    [self.imageView setUserInteractionEnabled:true];
    
    
    self.descLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, (UISCREEN_WIDTH - 40) / 3, (UISCREEN_WIDTH - 40) / 3, 20)];
    self.descLabel.textAlignment = NSTextAlignmentCenter;
    
    
    
    self.deleteButton = [[UIButton alloc] initWithFrame:CGRectMake(CELL_WIDTH - 35, 5, 30, 30)];
    [self.deleteButton setImage:[UIImage imageNamed:@"close"] forState:UIControlStateNormal];
    //先设置不可见；
    [self.deleteButton setHidden:true];
    
    
    
    [self addSubview:self.imageView];
    [self addSubview:self.descLabel];
    [self addSubview:self.deleteButton];
    
  }
  return self;
}

@end
