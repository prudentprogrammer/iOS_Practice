//
//  BNRItem.h
//  RandomItems
//
//  Created by Bharadwaj, Arjun on 3/5/18.
//  Copyright © 2018 Prudent Programmer. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject

@property (nonatomic, strong) BNRItem *containedItem;
@property (nonatomic, weak) BNRItem *container;

// Since we are referencing a class whose subclass is immutable
// we use the copy attribute.
@property (nonatomic, copy) NSString *itemName;
@property (nonatomic, copy) NSString *serialNumber;
@property (nonatomic) int valueInDollars;
// Readonly provides only a getter but no setter
@property (nonatomic, readonly, strong) NSDate *dateCreated;

// Designated initializer for BNRItem
- (instancetype) initWithItemName:(NSString*) name
                   valueInDollars:(int)value
                     serialNumber:(NSString*) sNumber;
-(instancetype) initWithItemName:(NSString *) name;

+(instancetype) randomItem;

@end
