//
//  UIDevice+Helpers.m
//  fws
//
//  Created by ateliee on 2014/10/07.
//  Copyright (c) 2014年 minato. All rights reserved.
//

#import "UIDevice+Helpers.h"
#include <sys/types.h>
#include <sys/sysctl.h>

@implementation UIDevice (Helpers)

-(NSString*) platform{
    size_t size;
    sysctlbyname("hw.machine", NULL, &size, NULL, 0);
    char* machine = malloc(size);
    sysctlbyname("hw.machine", machine, &size, NULL, 0);
    NSString* platform = [NSString stringWithCString:machine encoding:NSUTF8StringEncoding];
    free(machine);
    return platform;
}
@end
