//
//  ContactTableViewController.m
//  Calculator
//
//  Created by Peter Yo on 8月/7/16.
//  Copyright © 2016年 Peter Hsu. All rights reserved.
//

#import "ContactTableViewController.h"
#import "Storage.h"
#import "YOContact.h"

@interface ContactTableViewController ()
@property (nonatomic) Storage * storage;
@end

@implementation ContactTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.storage = [Storage new];
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
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.storage contacts].count;
}


- (IBAction)addContact:(id)sender {
    YOContact * contact = [YOContact new];
    UIAlertController * alertController = [UIAlertController alertControllerWithTitle:@"聯絡資訊" message:@"請填入聯絡人資訊" preferredStyle:UIAlertControllerStyleAlert];
    [alertController addTextFieldWithConfigurationHandler: ^(UITextField * _Nonnull textField) {
        [textField setPlaceholder:@"請在此填入姓名"];
    }];
    
    [alertController addTextFieldWithConfigurationHandler: ^(UITextField * _Nonnull textField) {
        [textField setPlaceholder:@"請填入電話"];
    }];
    [alertController addTextFieldWithConfigurationHandler: ^(UITextField * _Nonnull textField) {
        [textField setPlaceholder:@"請填入email"];
    }];
    
    UIAlertAction * cancel = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:nil];
    
    UIAlertAction * ok = [UIAlertAction actionWithTitle:@"加入" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action){
        NSString * contactName = [[alertController textFields] objectAtIndex:0].text;
        NSString * contactPhone = [[alertController textFields] objectAtIndex:1].text;
        NSString * contactEmail = [[alertController textFields] objectAtIndex:2].text;
        contact.name = contactName;
        contact.phoneNumber = contactPhone;
        contact.email = contactEmail;
        //[self.storage addContactWithName:contactName phoneNumber:contactPhone email:contactEmail];
        [self.storage addContactWithContact:contact];
        
        [self.tableView reloadData];
        
    }];
    
    [alertController addAction:cancel];
    [alertController addAction:ok];
    [self presentViewController:alertController animated:YES completion:nil];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    // Configure the cell...
    NSString * contactName = [self.storage contacts][indexPath.row].name;
    NSString * contactPhoneNumber = [self.storage contacts][indexPath.row].phoneNumber;
    cell.textLabel.text = contactName;
    cell.detailTextLabel.text = contactPhoneNumber;
    return cell;
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
