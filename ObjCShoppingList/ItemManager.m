//
//  ItemManager.m
//  ObjCShoppingList
//
//  Created by Jeremy Warren on 9/29/21.
//

#import "ItemManager.h"

@implementation ItemManager

- (instancetype) init {
    self = [super init];
    
    if (self) {
        _items = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)createItemWithTitle:(NSString *)title {
    Item *item = [[Item alloc] initWithTitle:title];
    
    [self.items addObject:item];
}

- (void)deleteItem:(Item *)item {
    [self.items removeObject:item];
}


@end
