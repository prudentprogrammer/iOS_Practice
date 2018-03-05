//
//  main.m
//  RandomItems
//
//  Created by Bharadwaj, Arjun on 3/5/18.
//  Copyright © 2018 Prudent Programmer. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        [items addObject:@"One"];
        [items addObject:@"Two"];
        [items addObject:@"Three"];
        
        [items insertObject:@"Zero" atIndex:0];
        
        for(NSString *item in items) {
            NSLog(@"%@", item);
        }
        
        items = nil;
    }
    return 0;
}
