//
//  UISwitchProcessor.m
//  nib2objc
//
//  Created by Adrian on 3/14/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "UISwitchProcessor.h"
#import "NSNumber+Nib2ObjcExtensions.h"

@implementation UISwitchProcessor

- (id)init
{
    if (self = [super init])
    {
        klass = @"UISwitch";
    }
    return self;
}

- (void)dealloc
{
    [super dealloc];
}

- (void)processKey:(id)item value:(id)value
{
    if ([item isEqualToString:@"on"])
    {
        NSString *stringOutput = [value booleanString];
        [output setObject:stringOutput forKey:item];
    }
    else
    {
        [super processKey:item value:value];
    }    
}

@end
