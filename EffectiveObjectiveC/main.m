//
//  main.m
//  EffectiveObjectiveC
//
//  Created by Arthur Tseng on 2019/1/1.
//  Copyright © 2019 Arthur Tseng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ARSmithPerson.h"
#import "AREmployee.h"
#import "ARAutoDictionary.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        ARSmithPerson *aPerson = [[ARSmithPerson alloc] initWithFirstName:@"Arthur" lastName:@"Smith"];
        NSLog(@"Hello, %@", [aPerson fullName]);
        
        ARPerson *bPerson = [[ARPerson alloc] initWithFirstName:@"Arthur" lastName:@"Smith"];
        NSLog(@"Hello, %@", [bPerson fullName]);
        
        NSLog(@"A and B are %@ person", ([bPerson isEqual:aPerson] ? @"same" : @"not same"));
        
        
        // Class cluster 類別叢集設計模式
        AREmployee *aEmployee = [AREmployee employeeWithType:AREmployeeTypeDeveloper];
        aEmployee.name = @"Bill";
        [aEmployee doADayWork];
        
        // 訊息傳送
        ARAutoDictionary *autoDictionary = [ARAutoDictionary new];
        autoDictionary.string = @"Test Message";
        NSLog(@"autoDictionary.string = %@", autoDictionary.string);
        
    }
    return 0;
}
