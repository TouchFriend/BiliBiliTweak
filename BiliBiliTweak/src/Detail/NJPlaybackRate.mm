#line 1 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliTweak/BiliBiliTweak/src/Detail/NJPlaybackRate.xm"

#import <UIKit/UIKit.h>
#include <mach-o/dyld.h>
#import <CydiaSubstrate/CydiaSubstrate.h>
#import <dlfcn.h>
#import "NJChangePlaybackRateTool.h"
#import "NJCommonDefine.h"



#define NJ_PLAYBACK_RATE_MAX 4













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

#ifdef __cplusplus
extern "C" {
#endif


void *orig_change_vertical_playback_rate;

void my_change_vertical_playback_rate(long long a1, unsigned long long a2, long long a3, long long a4);


void *orig_supportedPlaybackRateModelArr;

int64_t my_supportedPlaybackRateModelArr();

#ifdef __cplusplus
}
#endif




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
    
    





    
    
    long long get_max_playback_rate_address = g_slide+0x10F101034;
    NSLog(@"[%@] cal func get_max_playback_rate address:0x%llx", nj_logPrefix, get_max_playback_rate_address);
    MSHookFunction((void *)get_max_playback_rate_address,
                   (void*)my_get_max_playback_rate,
                   (void**)&orig_get_max_playback_rate);
    
    
    
    long long change_vertical_playback_rate_address = g_slide+0x10A9966AC;
    NSLog(@"[%@] cal func change_vertical_playback_rate address:0x%llx", nj_logPrefix, change_vertical_playback_rate_address);
    MSHookFunction((void *)change_vertical_playback_rate_address,
                   (void*)my_change_vertical_playback_rate,
                   (void**)&orig_change_vertical_playback_rate);
    
    
    
    long long supportedPlaybackRateModelArr_address = g_slide+0x10D82E870;
    NSLog(@"[%@] cal func supportedPlaybackRateModelArr_address address:0x%llx", nj_logPrefix, supportedPlaybackRateModelArr_address);
    MSHookFunction((void *)supportedPlaybackRateModelArr_address,
                   (void*)my_supportedPlaybackRateModelArr,
                   (void**)&orig_supportedPlaybackRateModelArr);
    
    
    long long playbackRate_address = g_slide+0x116E603E0;
    uint8_t *p = (uint8_t *)playbackRate_address;
    strcpy((char *)p, "3.0");
}
