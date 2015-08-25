//
//  FontTableViewController.h
//  Oefening 4 - UITable-2
//
//  Created by Jean Smits on 24/08/15.
//  Copyright (c) 2015 Jean Smits. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol FontProtocol

- (void) passFont: (NSString*) fontName;

@end


@interface FontTableViewController : UITableViewController
@property (weak, nonatomic) id <FontProtocol> fontDelegate;

@end
