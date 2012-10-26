//
//  Parser.h
//  RSSConsoleExample
//
//  Created by Don Miller on 10/26/12.
//  Copyright (c) 2012 University of Toledo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Parser : NSObject <NSXMLParserDelegate>
{
	NSXMLParser *rssParser;
	NSMutableArray *movies;
	NSMutableDictionary *item;
	NSString *currentElement;
	NSMutableString *currentTitle, *currentDate;
	NSMutableString *currentSummary, *currentLink;
}

@property (nonatomic, retain) NSMutableArray *movies;
-(void) parseXMLFileAtURL:(NSString *)URL;

@end
