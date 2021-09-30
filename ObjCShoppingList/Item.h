//
//  Item.h
//  ObjCShoppingList
//
//  Created by Jeremy Warren on 9/29/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Item : NSObject

@property NSString *title;

- (instancetype) initWithTitle: (NSString *)title;

@end

NS_ASSUME_NONNULL_END
