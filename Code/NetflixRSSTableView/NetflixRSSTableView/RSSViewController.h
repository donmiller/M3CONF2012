//
//  RSSViewController.h
//  NetflixRSSTableView
//
//  Created by Don Miller on 10/26/12.
//  Copyright (c) 2012 University of Toledo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Parser.h"

@interface RSSViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>
{
    NSMutableArray *items;
}

@property (retain, nonatomic) NSMutableArray *items;
-(void) loadData;

@end
