//
//  ARAutoDictionary.h
//  EffectiveObjectiveC
//
//  Created by Arthur Tseng on 2019/1/1.
//  Copyright © 2019 Arthur Tseng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ARAutoDictionary : NSObject

@property (nonatomic, strong) NSString *string;
@property (nonatomic, strong) NSNumber *number;
@property (nonatomic, strong) NSDate *date;
@property (nonatomic, strong) id opaqueObject;

@end

NS_ASSUME_NONNULL_END
