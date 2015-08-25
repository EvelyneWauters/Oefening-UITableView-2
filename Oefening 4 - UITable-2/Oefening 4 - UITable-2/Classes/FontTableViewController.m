//
//  FontTableViewController.m
//  Oefening 4 - UITable-2
//
//  Created by Jean Smits on 24/08/15.
//  Copyright (c) 2015 Jean Smits. All rights reserved.
//

#import "FontTableViewController.h"
#import "FontTableViewCell.h"

@interface FontTableViewController ()
@property (strong, nonatomic) NSMutableDictionary * funWithFonts;
@property (strong, nonatomic) FontTableViewCell* fontTableViewCell;
 @end

@implementation FontTableViewController

- (void) fillFunWithFontsArrays {
    self.funWithFonts = [[NSMutableDictionary alloc] init];

    NSArray * fontFamilies = [UIFont familyNames];
    
    for(int i = 0; i < fontFamilies.count; i++)   {
    
        NSArray *fontNames = [UIFont fontNamesForFamilyName:fontFamilies[i]];
        [self.funWithFonts setObject:fontNames forKey:fontFamilies[i]];
    }
}


- (NSArray*) returnAllFontNames :(NSInteger) section   {
    
    NSArray *allKeys = self.funWithFonts.allKeys;
    NSArray *allKeysSorted = [allKeys sortedArrayUsingSelector:@selector(caseInsensitiveCompare:)];


    NSArray *allFontNames = [self.funWithFonts.allValues objectAtIndex:section];
    NSArray *sortedKeys = [allFontNames sortedArrayUsingSelector:@selector(caseInsensitiveCompare:)];

    return sortedKeys;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self fillFunWithFontsArrays];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.funWithFonts.count;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSArray *allFontNames = [self returnAllFontNames:section];
    return allFontNames.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    FontTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"font cell" forIndexPath:indexPath];
    
    NSArray *allFontNames = [self returnAllFontNames:indexPath.section];
    NSString* fontName = allFontNames[indexPath.row];
    UIFont * font = [UIFont fontWithName:fontName size:17];
    
    cell.fontNameLabel.text = fontName;
    cell.fontNameLabel.font = font;
    
    return cell;
}


- (void)tableView:(UITableView * )tableView didSelectRowAtIndexPath:(NSIndexPath * )indexPath   {
    [self.navigationController popViewControllerAnimated:YES];
    
    NSArray *allFontNames = [self returnAllFontNames:indexPath.section];
    NSString *chosenFont = [allFontNames objectAtIndex:indexPath.row];
    [self.fontDelegate passFont: chosenFont];
    
}



/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
