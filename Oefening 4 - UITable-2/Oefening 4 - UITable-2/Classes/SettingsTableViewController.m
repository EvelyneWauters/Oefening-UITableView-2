//
//  SettingsTableViewController.m
//  Oefening 4 - UITable-2
//
//  Created by Jean Smits on 20/08/15.
//  Copyright (c) 2015 Jean Smits. All rights reserved.
//

#import "SettingsTableViewController.h"
#import "ColorTableViewController.h"
#import "FontTableViewController.h"
@interface SettingsTableViewController ()
@property (weak, nonatomic) IBOutlet UIView *colorLabel;
@property (weak, nonatomic) UIColor* color;
@property (weak, nonatomic) IBOutlet UILabel *fontLabel;
@property (weak, nonatomic) UIFont* font;
@property (weak, nonatomic) IBOutlet UILabel *colorLabelText;

@end

@implementation SettingsTableViewController

- (void) giveMeMyColorBack:(UIColor *)color {
    self.color = color;
}


- (void) passFont: (NSString *) fontName    {
    self.font = [UIFont fontWithName:fontName size:15];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.colorLabel.backgroundColor = self.color;
    self.fontLabel.font = self.font;
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void) viewWillAppear:(BOOL)animated  {
    [super viewWillAppear:YES];
    self.colorLabel.backgroundColor = self.color;
    self.colorLabelText.textColor = self.color;
    self.colorLabel.layer.cornerRadius = 11.0;
    self.fontLabel.textColor = self.color;
    self.fontLabel.font = self.font;
}

- (void) viewDidAppear:(BOOL)animated  {
    [super viewWillAppear:YES];
    self.colorLabel.backgroundColor = self.color;
    self.fontLabel.font = self.font;
}


#pragma mark - Table view data source

//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Potentially incomplete method implementation.
//    // Return the number of sections.
//    return 0;
//}
//
//- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//#warning Incomplete method implementation.
//    // Return the number of rows in the section.
//    return 0;
//}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

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
    [super prepareForSegue:segue sender:sender];
    
    
    if ([segue.destinationViewController isKindOfClass : [ColorTableViewController class] ]) {
        ColorTableViewController *controller = [segue destinationViewController];
        controller.delegate = self;

    } else if([segue.destinationViewController isKindOfClass : [FontTableViewController class] ]) {
        FontTableViewController *fontController = [segue destinationViewController];
        fontController.fontDelegate = self;
    }
    
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}































@end
