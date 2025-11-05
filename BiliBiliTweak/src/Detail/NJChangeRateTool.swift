//
//  NJChangeRateTool.swift
//  BiliBiliTweak
//
//  Created by touchWorld on 2025/11/2.
//

import Foundation


// 声明原函数类型
public typealias orig_change_vertical_playback_rate_type = @convention(c) (_ a1: Int64, _ a2: UInt64, _ a3: Int64, _ a4: Int64) -> Void

// 定义全局函数指针变量，并绑定一个 C 名字
@_silgen_name("orig_change_vertical_playback_rate")
nonisolated(unsafe) public var orig_change_vertical_playback_rate: orig_change_vertical_playback_rate_type? = nil

// 绑定一个 C 名字
@_cdecl("my_change_vertical_playback_rate")
func my_change_vertical_playback_rate(a1: Int64, a2: UInt64, a3: Int64, a4: Int64) {
    NSLog("[cxzcxz]:my_change_vertical_playback_rate")
    // 模拟字符串数组
    let arr = ["0.5", "0.75", "1.0", "1.25", "1.5", "3.0"]

    // 获取数组对象在堆上的指针地址
    let arrPtr = unsafeBitCast(arr, to: Int64.self)
    NSLog("[cxzcxz]:Array object pointer: 0x%@", String(arrPtr, radix: 16))
    
    if let orig_change_vertical_playback_rate {
        orig_change_vertical_playback_rate(a1, a2, a3, arrPtr)
    }
}


@objcMembers
public class NJChangeRateTool: NSObject {
    
    public static func getRateArr(arr: [String]) -> [String] {
        //        print("\(arr)")
        ////        return ["1.0", "1.1", "1.2", "1.3", "1.4", "1.5"]
        //        return arr
        //        return arr.withUnsafeBufferPointer { buffer in
        //            return UnsafeRawPointer(buffer.baseAddress)!
        //        }
        NSLog("[cxzcxz],arr:\(arr)")
        return arr
    }
}
