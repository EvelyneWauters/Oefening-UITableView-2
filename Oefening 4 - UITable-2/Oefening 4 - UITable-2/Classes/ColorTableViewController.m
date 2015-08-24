//
//  ColorTableViewController.m
//  Oefening 4 - UITable-2
//
//  Created by Jean Smits on 20/08/15.
//  Copyright (c) 2015 Jean Smits. All rights reserved.
//

#import "ColorTableViewController.h"
#import "ColorTableViewCell.h"
@interface ColorTableViewController ()

@property (strong, nonatomic) NSMutableArray *kleurtjes;

@end

@implementation ColorTableViewController
- (void) fillColorArray {
    self.kleurtjes = [[NSMutableArray alloc] init];
    
    
    for(float i = 0.0; i<1; i+=0.01)  {
        
        [self.kleurtjes addObject:[UIColor colorWithHue:i
                                             saturation:1.0
                                             brightness:1.0
                                                  alpha:1.0]];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self fillColorArray];
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
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return self.kleurtjes.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ColorTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"color cell" forIndexPath:indexPath];
    
    cell.backgroundColor = self.kleurtjes[indexPath.row];
    
    return cell;
}


- (void)tableView:(UITableView * )tableView didSelectRowAtIndexPath:(NSIndexPath * )indexPath   {
    [self.navigationController popViewControllerAnimated:YES];
    UIColor *chosenColor = [self.kleurtjes objectAtIndex:indexPath.row];
    [self.delegate giveMeMyColorBack: chosenColor];

}

//TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"team cell" forIndexPath:indexPath];
//
//NSInteger section = [indexPath section];
//NSInteger row = [indexPath row];
//
//if (section ==0)    {
//    Match* matchesPlayed = self.arrayMatchesPlayed[row];
//    [cell matchMaking:matchesPlayed];
//} else if (section ==1) {
//    Match* matchesOngoing = self.arrayMatchesOngoing[row];
//    [cell matchMaking:matchesOngoing];
//} else if (section ==2) {
//    Match* matchesNotPlayed = self.arrayMatchesNotPlayedYet[row];
//    [cell matchMaking:matchesNotPlayed];
//}
//
//return cell;







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


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

    
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.


}


@end
