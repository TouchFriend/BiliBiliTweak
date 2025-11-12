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

// 绑定一个 C 名字
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


// 绑定一个 C 名字
/*
@_cdecl("my_supportedPlaybackRateModelArr")
func my_supportedPlaybackRateModelArr() -> Int64 {
    NSLog("[cxzcxz]:my_supportedPlaybackRateModelArr")
    if let orig_supportedPlaybackRateModelArr {
        let arrAddress = orig_supportedPlaybackRateModelArr()
        let rateArr = unsafeBitCast(arrAddress, to: [AnyObject].self)
        var retArr = rateArr
        retArr.removeLast()
        let arrPtr = unsafeBitCast(retArr, to: Int64.self)
        return arrPtr
    }
    
    return 0;
    
    // 模拟字符串数组
//    let valueArr = [0.5, 0.75, 1.0, 1.25, 1.5, 2.0, 3.0]
//    var rateArr = [NSObject]()
//    if rateArr.isEmpty {
//        for value in valueArr {
//            if let cls = NSClassFromString("BBPlayerPlayerRateModel") as? NSObject.Type {
//                let obj = cls.init()
//                print("created:", obj)
//                // 设置属性
//                let text = String(format: "%.2f", value)
//                obj.setValue(text, forKey: "text")
//                obj.setValue(value, forKey: "value")
//
//                print("after set:", obj)
//                rateArr.append(obj)
//            }
//        }
//    }
//    return 0;
    
//    let ptr = UnsafeMutableRawPointer(Unmanaged.passRetained(rateArr as NSArray).toOpaque())
//    let addr = Int64(UInt(bitPattern: ptr))
//    return addr
    
    
//    let rateArrAdr = unsafeBitCast(rateArr, to: Int64.self)
//    return rateArrAdr;
//    // 获取数组对象在堆上的指针地址
//    let arrPtr = unsafeBitCast(arr, to: Int64.self)
//    NSLog("[cxzcxz]:Array object pointer: 0x%@", String(arrPtr, radix: 16))
    
    

//    return 0
}
 */

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
