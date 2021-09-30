//
//  Item.m
//  ObjCShoppingList
//
//  Created by Jeremy Warren on 9/29/21.
//

#import "Item.h"

@implementation Item

- (instancetype)initWithTitle:(NSString *)title {
    self = [super init];
    
    if (self) {
        _title = title;
    }
    return self;
}

@end
