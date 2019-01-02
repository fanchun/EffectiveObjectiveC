//
//  ARAutoDictionary.m
//  EffectiveObjectiveC
//
//  Created by Arthur Tseng on 2019/1/1.
//  Copyright © 2019 Arthur Tseng. All rights reserved.
//

#import "ARAutoDictionary.h"
#import <objc/runtime.h>

@interface ARAutoDictionary ()

@property (nonatomic, strong) NSMutableDictionary *backingStore;

@end

@implementation ARAutoDictionary

@dynamic string, number, date, opaqueObject;

id autoDictionaryGetter(id self, SEL _cmd) {
    //從物件取得支援的儲存機制
    ARAutoDictionary *typedSelf = (ARAutoDictionary *)self;
    NSMutableDictionary *backingStore = typedSelf.backingStore;
    
    //key就是selector名稱
    NSString *key = NSStringFromSelector(_cmd);
    
    // 回傳值
    return backingStore[key];
}

void autoDictionarySetter(id self, SEL _cmd, id value) {
    //從物件取得支援的儲存機制
    ARAutoDictionary *typedSelf = (ARAutoDictionary *)self;
    NSMutableDictionary *backingStore = typedSelf.backingStore;
    
    /** selector會是 (例如)"setterOpaqueObject"
     * 我們必須移除"set"以及":"，並且改變第一個字母的大小寫
     */
    NSString *selectorString = NSStringFromSelector(_cmd);
    NSMutableString *key = [selectorString mutableCopy];
    
    // 移除尾端的":"
    [key deleteCharactersInRange:NSMakeRange(key.length -1, 1)];
    
    // 移除開頭的"set"
    [key deleteCharactersInRange:NSMakeRange(0, 3)];
    
    // 將第一個字母改成小寫
    NSString *lowercaseFirstChar = [[key substringToIndex:1] lowercaseString];
    [key replaceCharactersInRange:NSMakeRange(0, 1)
                       withString:lowercaseFirstChar];
    
    if (value) {
        backingStore[key] = value;
    }else {
        [backingStore removeObjectForKey:key];
    }
}

+ (BOOL)resolveInstanceMethod:(SEL)selector {
    NSString *selectorString = NSStringFromSelector(selector);
    if([selectorString hasPrefix:@"set"]) {
        class_addMethod(self,
                        selector,
                        (IMP)autoDictionarySetter,
                        "v@:@");
    }else {
        class_addMethod(self,
                        selector,
                        (IMP)autoDictionaryGetter,
                        "@@:");
    }
    return YES;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        _backingStore = [NSMutableDictionary new];
    }
    return self;
}

@end
