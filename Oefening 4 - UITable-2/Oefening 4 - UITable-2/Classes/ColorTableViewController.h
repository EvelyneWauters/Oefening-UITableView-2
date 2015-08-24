//
//  ColorTableViewController.h
//  Oefening 4 - UITable-2
//
//  Created by Jean Smits on 20/08/15.
//  Copyright (c) 2015 Jean Smits. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol colorProtocol

- (void) giveMeMyColorBack: (UIColor *) color;

@end



@interface ColorTableViewController : UITableViewController

@property (weak, nonatomic) id <colorProtocol> delegate;

@end


