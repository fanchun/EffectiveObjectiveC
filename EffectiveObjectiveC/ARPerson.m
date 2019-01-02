//
//  ARPerson.m
//  EffectiveObjectieC
//
//  Created by Arthur Tseng on 2019/1/1.
//  Copyright © 2019 Arthur Tseng. All rights reserved.
//

#import "ARPerson.h"

@implementation ARPerson

- (NSString *)fullName {
    return [NSString stringWithFormat:@"%@ %@", _firstName, _lastName];
}

- (void)setFullName:(NSString *)fullName {
    NSArray *components = [fullName componentsSeparatedByString:@" "];
    self.firstName = components[0];
    self.lastName = components[1];
}

- (BOOL)isEqualToPerson:(ARPerson *)anotherPerson {
    if (self == anotherPerson) {
        return YES;
    }
    if (![_firstName isEqualToString:anotherPerson.firstName]) {
        return NO;
    }
    if (![_lastName isEqualToString:anotherPerson.lastName]) {
        return NO;
    }
    if (_age != anotherPerson.age) {
        return NO;
    }
    return YES;
}

- (BOOL)isEqual:(id)object {
    if ([self class] == [object class] || [object isKindOfClass:[self class]]) {
        return [self isEqualToPerson:(ARPerson *)object];
    }else {
        return [super isEqual:object];
    }
}

- (instancetype)initWithFirstName:(NSString *)firstName lastName:(NSString *)lastName {
    self = [super init];
    if (self) {
        _firstName = [firstName copy];
        self.lastName = [lastName copy];
    }
    return self;
}

@end
