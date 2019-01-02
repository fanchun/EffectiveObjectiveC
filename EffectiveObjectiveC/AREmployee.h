//
//  AREmployee.h
//  EffectiveObjectieC
//
//  Created by Arthur Tseng on 2019/1/1.
//  Copyright © 2019 Arthur Tseng. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, AREmployeeType) {
    AREmployeeTypeDeveloper,
    AREmployeeTypeDesigner,
    AREmployeeTypeFinance,
};

NS_ASSUME_NONNULL_BEGIN

@interface AREmployee : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) NSUInteger salary;


+ (AREmployee *)employeeWithType:(AREmployeeType)type;

- (void)doADayWork;

@end

NS_ASSUME_NONNULL_END
