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

//Geef aan dat de UITableViewController het protocol UISearchBarDelegate implementeert, dit doe je door <UISearchBarDelegate> toe te voegen achter de interface declaratie.
@interface FontTableViewController : UITableViewController <UISearchBarDelegate>
@property (weak, nonatomic) id <FontProtocol> fontDelegate;

@end
