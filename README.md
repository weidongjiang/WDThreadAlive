# WDThreadAlive

[![CI Status](https://img.shields.io/travis/weidongjiang/WDThreadAlive.svg?style=flat)](https://travis-ci.org/weidongjiang/WDThreadAlive)
[![Version](https://img.shields.io/cocoapods/v/WDThreadAlive.svg?style=flat)](https://cocoapods.org/pods/WDThreadAlive)
[![License](https://img.shields.io/cocoapods/l/WDThreadAlive.svg?style=flat)](https://cocoapods.org/pods/WDThreadAlive)
[![Platform](https://img.shields.io/cocoapods/p/WDThreadAlive.svg?style=flat)](https://cocoapods.org/pods/WDThreadAlive)

## WDThreadAlive 线程保活

- iOS 线程保活，可以使用创建好的已有线程，提供给下次使用
- 添加任务，也可以当做串行队列使用

## 使用
- 创建WDPermenantThread 实例对象
调用下面方法添加任务到该线程中
```
/**
 在当前子线程执行一个任务
 */
- (void)executeTask:(WDPermenantThreadTask)task;

```
在合适的地方调用stop，销毁当前线程
```
/**
 结束线程
 */
- (void)stop;
```

## 使用该基础工具

WDThreadAlive is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:



```ruby
source 'git@github.com:weidongjiang/WDComponentSpecs.git'
pod 'WDThreadAlive'
```

## Author

weidongjiang
