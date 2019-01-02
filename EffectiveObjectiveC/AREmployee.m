//
//  AREmployee.m
//  EffectiveObjectieC
//
//  Created by Arthur Tseng on 2019/1/1.
//  Copyright © 2019 Arthur Tseng. All rights reserved.
//

#import "AREmployee.h"

@interface AREmployeeDeveloper : AREmployee

@end

@implementation AREmployeeDeveloper

- (void)doADayWork {
    NSLog(@"%@ writes code.", self.name);
}

@end

@interface AREmployeeDesigner : AREmployee

@end

@implementation AREmployeeDesigner

- (void)doADayWork {
    NSLog(@"%@ designs UI.", self.name);
}
@end

@interface AREmployeeFinace : AREmployee

@end

@implementation AREmployeeFinace

- (void)doADayWork {
    NSLog(@"%@ calculates salary.", self.name);
}
@end

@implementation AREmployee

+ (AREmployee *)employeeWithType:(AREmployeeType)type {
    switch (type) {
        case AREmployeeTypeDeveloper:
            return [AREmployeeDeveloper new];
            break;
        case AREmployeeTypeDesigner:
            return [AREmployeeDesigner new];
            break;
        case AREmployeeTypeFinance:
            return [AREmployeeFinace new];
            break;
    }
}

- (void)doADayWork {
    
}

@end
