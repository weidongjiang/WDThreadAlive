//
//  WDPermenantThread.m
//  WDThreadAlive
//
//  Created by 蒋伟东 on 2022/3/26.
//  Copyright © 2022 weidongjiang. All rights reserved.
//

#import "WDPermenantThread.h"

/** WDThread **/
@interface WDThread : NSThread
@end
@implementation WDThread
- (void)dealloc
{
    NSLog(@"%s", __func__);
}
@end


@interface WDPermenantThread ()

@property (strong, nonatomic) WDThread *innerThread;

@end


@implementation WDPermenantThread

#pragma mark - public methods
- (instancetype)init
{
    if (self = [super init]) {
        self.innerThread = [[WDThread alloc] initWithBlock:^{
            // 创建上下文（要初始化一下结构体）
            CFRunLoopSourceContext context = {0};
            
            // 创建source
            CFRunLoopSourceRef source = CFRunLoopSourceCreate(kCFAllocatorDefault, 0, &context);
            
            // 往Runloop中添加source
            CFRunLoopAddSource(CFRunLoopGetCurrent(), source, kCFRunLoopDefaultMode);
            
            // 销毁source
            CFRelease(source);
            
            // 启动
            CFRunLoopRunInMode(kCFRunLoopDefaultMode, 1.0e10, false);
        }];
        
        [self.innerThread start];
    }
    return self;
}

- (void)executeTask:(WDPermenantThreadTask)task
{
    if (!self.innerThread || !task) return;
    
    [self performSelector:@selector(__executeTask:) onThread:self.innerThread withObject:task waitUntilDone:NO];
}

- (void)stop
{
    if (!self.innerThread) return;
    
    [self performSelector:@selector(__stop) onThread:self.innerThread withObject:nil waitUntilDone:YES];
}

- (void)dealloc
{
    NSLog(@"%s", __func__);
    [self stop];
}

#pragma mark - private methods
- (void)__stop
{
    CFRunLoopStop(CFRunLoopGetCurrent());
    self.innerThread = nil;
}

- (void)__executeTask:(WDPermenantThreadTask)task
{
    task();
}


@end
