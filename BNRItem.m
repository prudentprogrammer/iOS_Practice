//
//  BNRItem.m
//  RandomItems
//
//  Created by Bharadwaj, Arjun on 3/5/18.
//  Copyright © 2018 Prudent Programmer. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem

-(void)setItemName:(NSString *) str {
    _itemName = str;
}
-(NSString *)itemName {
    return _itemName;
}

-(void)setSerialNumber:(NSString *) str {
    _serialNumber = str;
}
-(NSString *)serialNumber {
    return _serialNumber;
}

-(void)setValueInDollars:(int) v {
    _valueInDollars = v;
}
-(int) valueInDollars {
    return _valueInDollars;
}

-(NSDate *) dateCreated {
    return _dateCreated;
}


@end