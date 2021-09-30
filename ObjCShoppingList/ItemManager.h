//
//  ItemManager.h
//  ObjCShoppingList
//
//  Created by Jeremy Warren on 9/29/21.
//

#import <Foundation/Foundation.h>
#import "Item.h"

NS_ASSUME_NONNULL_BEGIN

@interface ItemManager : NSObject

@property NSMutableArray<Item *> *items;

- (void)createItemWithTitle: (NSString *)title;

- (void) deleteItem:(Item *)item;


@end

NS_ASSUME_NONNULL_END
