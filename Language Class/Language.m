//
//  Language.m
//  TownCenterProject
//
//  Created by ASAL on 7/5/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Language.h"

@implementation Language

static NSBundle *bundle = nil;

+(void)initialize {
    NSArray* languages = [NSLocale preferredLanguages];
    NSString *current = [languages objectAtIndex:0];
    [self setLanguage:current];
}

/*
 example calls:
 [Language setLanguage:@"it"];
 [Language setLanguage:@"de"];
 */

+(void)setLanguage:(NSString *)language {
    NSLog(@"preferredLang: %@", language);
    NSString *path = [[ NSBundle mainBundle ] pathForResource:language ofType:@"lproj" ];
    bundle = [[NSBundle bundleWithPath:path] retain];
}

+(NSString *)get:(NSString *)key alter:(NSString *)alternate {
    NSLog(@"bundlePath = %@",[bundle bundlePath]);;
    return [bundle localizedStringForKey:key value:alternate table:nil];
}

@end
