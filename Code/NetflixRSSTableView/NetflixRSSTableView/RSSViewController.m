//
//  RSSViewController.m
//  NetflixRSSTableView
//
//  Created by Don Miller on 10/26/12.
//  Copyright (c) 2012 University of Toledo. All rights reserved.
//

#import "RSSViewController.h"
#import "RSSDetailViewController.h"

@interface RSSViewController ()

@end

@implementation RSSViewController
@synthesize items;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self loadData];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (void)loadData
{
	if (items == nil)
    {
		Parser *rssParser = [[Parser alloc] init];
        
		[rssParser parseXMLFileAtURL:@"http://rss.netflix.com/Top100RSS"];
		items = [rssParser movies];
    }
}

- (void)receivedItems:(NSMutableArray *)theItems
{
	items = theItems;
}

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section
{
    return [items count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    // Configure the cell.
    cell.textLabel.text = [[items objectAtIndex:indexPath.row] objectForKey:@"title"];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    RSSDetailViewController *detail = [self.storyboard instantiateViewControllerWithIdentifier:@"detail"];
    detail.item = [items objectAtIndex:indexPath.row];
    [self.navigationController pushViewController:detail animated:YES];
}


@end
