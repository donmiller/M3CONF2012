//
//  RSSDetailViewController.h
//  NetflixRSSTableView
//
//  Created by Don Miller on 10/26/12.
//  Copyright (c) 2012 University of Toledo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RSSDetailViewController : UIViewController
{
}

@property (nonatomic, retain) NSDictionary *item;
@property (nonatomic, retain) IBOutlet UILabel *itemTitle;
@property (nonatomic, retain) IBOutlet UIWebView *itemSummary;

@end
