//
//  NJChangeRateTool.swift
//  BiliBiliTweak
//
//  Created by touchWorld on 2025/11/2.
//

import Foundation
import ObjectiveC.runtime

// 声明原函数类型
public typealias orig_change_vertical_playback_rate_type = @convention(c) (_ a1: Int64, _ a2: UInt64, _ a3: Int64, _ a4: Int64) -> Void

// 定义全局函数指针变量，并绑定一个 C 名字
@_silgen_name("orig_change_vertical_playback_rate")
nonisolated(unsafe) public var orig_change_vertical_playback_rate: orig_change_vertical_playback_rate_type? = nil

// [横屏视频-半屏播放]更改竖屏播放速度方法-修复点击提示问题
@_cdecl("my_change_vertical_playback_rate")
func my_change_vertical_playback_rate(a1: Int64, a2: UInt64, a3: Int64, a4: Int64) {
    let origArr = unsafeBitCast(a4, to: [String].self)
    NSLog("[cxzcxz]:my_change_vertical_playback_rate:%@", origArr)
    // 模拟字符串数组
    let arr = ["0.5", "1.0", "1.25", "1.5", "2.0", "3.0"]

    // 获取数组对象在堆上的指针地址
    let arrPtr = unsafeBitCast(arr, to: Int64.self)
    NSLog("[cxzcxz]:Array object pointer: 0x%@", String(arrPtr, radix: 16))
    
    if let orig_change_vertical_playback_rate {
        orig_change_vertical_playback_rate(a1, a2, a3, arrPtr)
    }
}

// 声明原函数类型
public typealias orig_supportedPlaybackRateModelArr_type = @convention(c) () -> Int64

// 定义全局函数指针变量，并绑定一个 C 名字
@_silgen_name("orig_supportedPlaybackRateModelArr")
nonisolated(unsafe) public var orig_supportedPlaybackRateModelArr: orig_supportedPlaybackRateModelArr_type? = nil
// [横屏视频-全屏播放]播放速度数组
@_cdecl("my_supportedPlaybackRateModelArr")
func my_supportedPlaybackRateModelArr() -> Int64 {
    if let orig_supportedPlaybackRateModelArr {
        let origPtr = orig_supportedPlaybackRateModelArr()
        let origArr = unsafeBitCast(origPtr, to: [NSObject].self)
        let tool = NJChangePlaybackRateTool()
        tool.changePlaybackRate(withRateArray: origArr)
        let retPtr = unsafeBitCast(origArr, to: Int64.self)
        return retPtr
    }
    return 0
}

