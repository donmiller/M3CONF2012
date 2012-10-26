//
//  RSSDetailViewController.m
//  NetflixRSSTableView
//
//  Created by Don Miller on 10/26/12.
//  Copyright (c) 2012 University of Toledo. All rights reserved.
//

#import "RSSDetailViewController.h"

@interface RSSDetailViewController ()

@end

@implementation RSSDetailViewController
@synthesize item, itemSummary, itemTitle;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.itemTitle.text = [item objectForKey:@"title"];
    [self.itemSummary loadHTMLString:[item objectForKey:@"summary"] baseURL:nil];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    self.item = nil;
    self.itemTitle = nil;
    self.itemSummary = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
