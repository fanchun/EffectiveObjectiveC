//
//  ARSmithPerson.m
//  EffectiveObjectieC
//
//  Created by Arthur Tseng on 2019/1/1.
//  Copyright © 2019 Arthur Tseng. All rights reserved.
//

#import "ARSmithPerson.h"

@implementation ARSmithPerson

- (void)setLastName:(NSString *)aLastName {
    if (NO == [aLastName isEqualToString:@"Smith"]) {
        [NSException raise:NSInvalidArgumentException
                    format:@"Last name must be Smith!"];
    }
    super.lastName = aLastName;
}

@end
