
#import <UIKit/UIKit.h>
#include <mach-o/dyld.h>
#import <CydiaSubstrate/CydiaSubstrate.h>
#import <dlfcn.h>
#import "NJChangePlaybackRateTool.h"
#import "NJCommonDefine.h"
//#import "BiliBiliTweak-Swift.h"

// 最大播放速度
#define NJ_PLAYBACK_RATE_MAX 4

/*
static id (*orig_BBPlayerCommonSwift_BBPlayerPlaybackRateListWidget_rateArray)() = NULL;
// 播放速度数组
static id hook_BBPlayerCommonSwift_BBPlayerPlaybackRateListWidget_rateArray() {
    id origArr = orig_BBPlayerCommonSwift_BBPlayerPlaybackRateListWidget_rateArray();
    NJChangePlaybackRateTool *tool = [[NJChangePlaybackRateTool alloc] init];
    [tool changePlaybackRateWithRateArray:[NSArray arrayWithArray:origArr]];
    return origArr;
}
 */

// 1) 定义原函数的原型 —— 必须和目标函数签名完全一致
typedef void (*orig_get_max_playback_rate_t)(
    int a1,
    double *a2,
    long long a3,
    long long a4,
    long long a5,
    long long a6,
    long long a7,
    long long a8,
    unsigned long long *a9, // _QWORD * -> uint64_t *
    long long a10,
    unsigned int a11,
    long long a12
);

// 2) 保存原函数指针
static orig_get_max_playback_rate_t orig_get_max_playback_rate = NULL;

// 获取最大播放速度方法
static void my_get_max_playback_rate(
    int a1,
    double *a2,
    long long a3,
    long long a4,
    long long a5,
    long long a6,
    long long a7,
    long long a8,
    unsigned long long *a9,
    long long a10,
    unsigned int a11,
    long long a12
) {
    // sub_10F101034(10LL, &v7, 4LL);
    if (a1 == 10 && a3 == 4) {
        if (orig_get_max_playback_rate) {
            orig_get_max_playback_rate(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }
//        NSLog(@"[%@] change max rate before get_max_playback_rate called("
//                  "a1=%d, "
//                  "a2=%p(%lf), "
//                  "a3=%lld, a4=%lld, a5=%lld, a6=%lld, a7=%lld, a8=%lld, "
//                  "a9=%p, "
//                  "a10=%lld, a11=%u, a12=%lld)",
//                  nj_logPrefix,
//                  a1,
//                  a2, *(float *)a2,
//                  a3, a4, a5, a6, a7, a8,
//                  a9,
//                  a10, a11, a12);
        *(float *)a2 = NJ_PLAYBACK_RATE_MAX;
//        NSLog(@"[%@] change max rate after get_max_playback_rate called("
//                  "a1=%d, "
//                  "a2=%p(%lf), "
//                  "a3=%lld, a4=%lld, a5=%lld, a6=%lld, a7=%lld, a8=%lld, "
//                  "a9=%p, "
//                  "a10=%lld, a11=%u, a12=%lld)",
//                  nj_logPrefix,
//                  a1,
//                  a2, *(float *)a2,
//                  a3, a4, a5, a6, a7, a8,
//                  a9,
//                  a10, a11, a12);
        return;
    }

    if (orig_get_max_playback_rate) {
        orig_get_max_playback_rate(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
    }
}



typedef long long (*orig_change_playback_rate_t)(long long result, float a2);

static orig_change_playback_rate_t orig_change_playback_rate = NULL;
// 更改播放速度方法
static long long my_change_playback_rate(long long result, float a2) {
//    NSLog(@"[%@] change_playback_rate 被调用, 参数 a2 = %f", nj_logPrefix, a2);
    // 调用原函数（保持正常流程）
    long long ret = 0;
    if (orig_change_playback_rate) {
        ret = orig_change_playback_rate(result, a2);
    }
    return ret;
}

#ifdef __cplusplus
extern "C" {
#endif

// 导入swift定义的全局变量
void *orig_change_vertical_playback_rate;
// 导入swift定义的c函数
void my_change_vertical_playback_rate(long long a1, unsigned long long a2, long long a3, long long a4);


void *orig_supportedPlaybackRateModelArr;
// 导入swift定义的c函数
int64_t my_supportedPlaybackRateModelArr();

#ifdef __cplusplus
}
#endif



// ASLR的偏移量
intptr_t g_slide;

//保存模块偏移基地址的值
static void _register_func_for_add_image(const struct mach_header *header, intptr_t slide) {
    Dl_info image_info;
    int result = dladdr(header, &image_info);
    if (result == 0) {
        NSLog(@"[%@] load mach_header failed", nj_logPrefix);
        return;
    }
    //获取当前的可执行文件路径
    NSString *execName = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleExecutable"];
    NSString *execPath = [[[NSBundle mainBundle] bundlePath] stringByAppendingFormat:@"/%@", execName];
    if (strcmp([execPath UTF8String], image_info.dli_fname) == 0) {
        g_slide = slide;
        NSLog(@"[%@] g_slide:0x%lx", nj_logPrefix, g_slide);
    }
    
    //如果需要获取可执行文件中引入的某一个模块(如你加入的XXX.dylib)在内存中的偏移量
    //则需要判断image_info.dli_fname中是否h包含字符串XXX.dylib
    // NSString *fname = [NSString stringWithUTF8String:image_info.dli_fname];
    // if ([fname containsString:@"NJHookSwiftProject.debug.dylib"]) {
    //     g_slide = slide;
    //     NSLog(@"[cxzcxz] g_slide:%ld", g_slide);
    // }
}

__attribute__((constructor)) static void __init__(void) {
    _dyld_register_func_for_add_image(_register_func_for_add_image);
    
    // [横屏视频-全屏播放]播放速度数组
//    long long rateArray_address = g_slide+0x10D829128;
//    NSLog(@"[%@] cal func rateArray address:0x%llx", nj_logPrefix, rateArray_address);
//    MSHookFunction((void *)rateArray_address,
//            (void*)hook_BBPlayerCommonSwift_BBPlayerPlaybackRateListWidget_rateArray,
//            (void**)&orig_BBPlayerCommonSwift_BBPlayerPlaybackRateListWidget_rateArray);
    
    // 获取最大播放速度方法
    long long get_max_playback_rate_address = g_slide+0x10F101034;
    NSLog(@"[%@] cal func get_max_playback_rate address:0x%llx", nj_logPrefix, get_max_playback_rate_address);
    MSHookFunction((void *)get_max_playback_rate_address,
                   (void*)my_get_max_playback_rate,
                   (void**)&orig_get_max_playback_rate);
    
    // void __fastcall sub_10A9966AC(__int64 a1, unsigned __int64 a2, __int64 a3, __int64 a4)
    // [横屏视频-半屏播放]更改竖屏播放速度方法
    long long change_vertical_playback_rate_address = g_slide+0x10A9966AC;
    NSLog(@"[%@] cal func change_vertical_playback_rate address:0x%llx", nj_logPrefix, change_vertical_playback_rate_address);
    MSHookFunction((void *)change_vertical_playback_rate_address,
                   (void*)my_change_vertical_playback_rate,
                   (void**)&orig_change_vertical_playback_rate);
    
    // __int64 sub_10D82E870()
    // [横屏视频-全屏播放]播放速度数组
    long long supportedPlaybackRateModelArr_address = g_slide+0x10D82E870;
    NSLog(@"[%@] cal func supportedPlaybackRateModelArr_address address:0x%llx", nj_logPrefix, supportedPlaybackRateModelArr_address);
    MSHookFunction((void *)supportedPlaybackRateModelArr_address,
                   (void*)my_supportedPlaybackRateModelArr,
                   (void**)&orig_supportedPlaybackRateModelArr);
    
    // 0000000116E603E0  32 2E 30 00 00 00 00 00  00 00 00 00 00 00 00 E3  2.0.............
    long long playbackRate_address = g_slide+0x116E603E0;
    uint8_t *p = (uint8_t *)playbackRate_address;
    strcpy((char *)p, "3.0");
}
