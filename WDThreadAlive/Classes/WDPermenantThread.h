//
//  WDPermenantThread.h
//  WDThreadAlive
//
//  Created by 蒋伟东 on 2022/3/26.
//  Copyright © 2022 weidongjiang. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef void (^WDPermenantThreadTask)(void);

@interface WDPermenantThread : NSObject


/**
 在当前子线程执行一个任务
 */
- (void)executeTask:(WDPermenantThreadTask)task;

/**
 结束线程
 */
- (void)stop;

@end

NS_ASSUME_NONNULL_END
