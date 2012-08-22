//
//  Language.h
//  TownCenterProject
//
//  Created by ASAL on 7/5/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Language : NSObject

+(void)initialize;
+(void)setLanguage:(NSString *)language;
+(NSString *)get:(NSString *)key alter:(NSString *)alternate;

@end
