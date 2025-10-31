#line 1 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliTweak/BiliBiliTweak/src/Detail/NJPlaybackRate.xm"

#import <UIKit/UIKit.h>
#include <mach-o/dyld.h>
#import <CydiaSubstrate/CydiaSubstrate.h>
#import <dlfcn.h>
#import "NJChangePlaybackRateTool.h"
#import "NJCommonDefine.h"


#define NJ_PLAYBACK_RATE_MAX 4

static id (*orig_BBPlayerCommonSwift_BBPlayerPlaybackRateListWidget_rateArray)() = NULL;

static id hook_BBPlayerCommonSwift_BBPlayerPlaybackRateListWidget_rateArray() {
    id origArr = orig_BBPlayerCommonSwift_BBPlayerPlaybackRateListWidget_rateArray();
    NJChangePlaybackRateTool *tool = [[NJChangePlaybackRateTool alloc] init];
    [tool changePlaybackRateWithRateArray:[NSArray arrayWithArray:origArr]];
    return origArr;
}


typedef void (*orig_get_max_playback_rate_t)(
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
);


static orig_get_max_playback_rate_t orig_get_max_playback_rate = NULL;


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
    
    if (a1 == 10 && a3 == 4) {
        if (orig_get_max_playback_rate) {
            orig_get_max_playback_rate(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }












        *(float *)a2 = NJ_PLAYBACK_RATE_MAX;












        return;
    }

    if (orig_get_max_playback_rate) {
        orig_get_max_playback_rate(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
    }
}



typedef long long (*orig_change_playback_rate_t)(long long result, float a2);

static orig_change_playback_rate_t orig_change_playback_rate = NULL;

static long long my_change_playback_rate(long long result, float a2) {

    
    long long ret = 0;
    if (orig_change_playback_rate) {
        ret = orig_change_playback_rate(result, a2);
    }
    return ret;
}


intptr_t g_slide;


static void _register_func_for_add_image(const struct mach_header *header, intptr_t slide) {
    Dl_info image_info;
    int result = dladdr(header, &image_info);
    if (result == 0) {
        NSLog(@"[%@] load mach_header failed", nj_logPrefix);
        return;
    }
    
    NSString *execName = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleExecutable"];
    NSString *execPath = [[[NSBundle mainBundle] bundlePath] stringByAppendingFormat:@"/%@", execName];
    if (strcmp([execPath UTF8String], image_info.dli_fname) == 0) {
        g_slide = slide;
        NSLog(@"[%@] g_slide:0x%lx", nj_logPrefix, g_slide);
    }
    
    
    
    
    
    
    
    
}

__attribute__((constructor)) static void __init__(void) {
    _dyld_register_func_for_add_image(_register_func_for_add_image);
    
    
    long long rateArray_address = g_slide+0x10D829128;
    NSLog(@"[%@] cal func rateArray address:0x%llx", nj_logPrefix, rateArray_address);
    MSHookFunction((void *)rateArray_address,
            (void*)hook_BBPlayerCommonSwift_BBPlayerPlaybackRateListWidget_rateArray,
            (void**)&orig_BBPlayerCommonSwift_BBPlayerPlaybackRateListWidget_rateArray);
    
    
    long long get_max_playback_rate_address = g_slide+0x10F101034;
    NSLog(@"[%@] cal func get_max_playback_rate address:0x%llx", nj_logPrefix, get_max_playback_rate_address);
    MSHookFunction((void *)get_max_playback_rate_address,
                   (void*)my_get_max_playback_rate,
                   (void**)&orig_get_max_playback_rate);
    
    
    long long change_playback_rate_address = g_slide+0x10F0A70B4;
    NSLog(@"[%@] cal func change_playback_rate address:0x%llx", nj_logPrefix, change_playback_rate_address);
    MSHookFunction((void *)change_playback_rate_address,
                   (void*)my_change_playback_rate,
                   (void**)&orig_change_playback_rate);
}
