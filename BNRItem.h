//
//  BNRItem.h
//  RandomItems
//
//  Created by Bharadwaj, Arjun on 3/5/18.
//  Copyright © 2018 Prudent Programmer. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject {
    NSString *_itemName;
    NSString *_serialNumber;
    int _valueInDollars;
    NSDate *_dateCreated;
}

-(void)setItemName:(NSString *) str;
-(NSString *)itemName;

-(void)setSerialNumber:(NSString *) str;
-(NSString *)serialNumber;

-(void)setValueInDollars:(int) v;
-(int) valueInDollars;

-(NSDate *) dateCreated;

@end
