//
//  UIDownPicker.m
//  Know
//
//  Created by DarkAngel on 29/03/15.
//  Copyright (c) 2015 Ryadel. All rights reserved.
//

#import "UIDownPicker.h"

@implementation UIDownPicker

-(id)init
{
    return [self initWithData:nil];
}

-(id)initWithData:(NSArray*)data
{
    self = [super init];
    if (self) {
        self.DownPicker = [[DownPicker alloc] initWithTextField:self withData:data];
    }
    return self;
}

#pragma mark - override rect methods

- (CGRect)rightViewRectForBounds:(CGRect)bounds{
    [super rightViewRectForBounds:bounds];
    
    if (self.textAlignment == NSTextAlignmentRight) {
        return CGRectMake(bounds.origin.x + 10, (self.bounds.size.height/2)-11, 21, 25);
    }
    return CGRectMake(self.bounds.size.width - 25, (self.bounds.size.height/2)-11, 21, 25);
}

-(CGRect) textRectForBounds:(CGRect)bounds{
    [super textRectForBounds:bounds];
    
    if (self.textAlignment == NSTextAlignmentRight) {
        return CGRectMake(30, 0, bounds.size.width-35, bounds.size.height);
    }
    return CGRectMake(10, 0, bounds.size.width-35, bounds.size.height);
}

@end
