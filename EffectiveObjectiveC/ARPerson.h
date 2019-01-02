//
//  ARPerson.h
//  EffectiveObjectieC
//
//  Created by Arthur Tseng on 2019/1/1.
//  Copyright © 2019 Arthur Tseng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ARPerson : NSObject

@property (nonatomic, copy) NSString *firstName;
@property (nonatomic, copy) NSString *lastName;
@property (nonatomic, assign) NSUInteger *age;

- (instancetype)initWithFirstName:(NSString *)firstName lastName:(NSString *)lastName;

- (NSString *)fullName;
- (void)setFullName:(NSString *)fullName;

- (BOOL)isEqualToPerson:(ARPerson *)anotherPerson;

@end

NS_ASSUME_NONNULL_END
