//
//  TableViewController.m
//  ObjCShoppingList
//
//  Created by Jeremy Warren on 9/29/21.
//

#import "TableViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.manager = [[ItemManager alloc] init];
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.manager.items.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"itemCell" forIndexPath:indexPath];
    
    Item *item = self.manager.items[indexPath.row];
    cell.textLabel.text = item.title;
    
    return cell;
}


// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        Item *item = self.manager.items[indexPath.row];
        [self.manager deleteItem:item];
        
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
   
    }   
}

- (IBAction)itemButtonTapped:(id)sender {
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle: @"New Item" message:@"" preferredStyle:UIAlertControllerStyleAlert];
    
    [alert addTextFieldWithConfigurationHandler:NULL];
    
    UIAlertAction *cancelButton = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:NULL];
    UIAlertAction *saveButton = [UIAlertAction actionWithTitle:@"Save" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
        UITextField *textField = alert.textFields.firstObject;
        
        NSString *itemName = textField.text;
        
        [self.manager createItemWithTitle: itemName];
        
        [self.tableView reloadData];
        
    }];
    
    
    [alert addAction:cancelButton];
    [alert addAction:saveButton];
    
    [self presentViewController:alert animated:YES completion:NULL];
    //let alert = UIAlertController(title: "Shopping List Item", message: "", preferredStyle: .alert)
    //
    //alert.addTextField{textField in
    //    textField.placeholder = "Type Item" ??
    //}
    //
    //let cancelButton = UIAlertAction(title: "Cancel", style: .cancel)
    //let saveButton = UIAlertAction(title: "Save", style: .default) { _ in
    //
    //    guard let itemField = alert.textFields?.first else { return }
    //
    //    let itemName = itemField.text ?? "nothing"
    //
    //    ItemManager.shared.createItem(name: itemName)
    //
    //    self.tableView.reloadData()
    //}
    //alert.addAction(cancelButton)
    //alert.addAction(saveButton)
    //
    //present(alert, animated: true)
    //}
    //
}

@end
