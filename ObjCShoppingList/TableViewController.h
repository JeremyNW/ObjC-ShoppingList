//
//  TableViewController.h
//  ObjCShoppingList
//
//  Created by Jeremy Warren on 9/29/21.
//

#import <UIKit/UIKit.h>
#import "ItemManager.h"

NS_ASSUME_NONNULL_BEGIN

@interface TableViewController : UITableViewController

@property ItemManager *manager;
- (IBAction)itemButtonTapped:(id)sender;


@end

NS_ASSUME_NONNULL_END
