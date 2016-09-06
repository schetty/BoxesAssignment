//
//  Box.m
//  boxesRedo
//
//  Created by naomi schettini on 2016-09-06.
//  Copyright © 2016 naomi schettini. All rights reserved.
//

#import "Box.h"

@implementation Box

- (instancetype)initWithHeight:(float)height width:(float)width andLength:(float)length
{
    self = [super init];
    if (self) {
        _height = height;
        _width = width;
        _length = length;
        
    }
    return self;
}

- (float) calculateVolume {
    return (self.length * self.width * self.height);
}



- (float) timesFitsInBox:(Box*)aBox {
    if (aBox.calculateVolume > self.calculateVolume) {
        float timesFitsIn = ([aBox calculateVolume] / [self calculateVolume]);
        return timesFitsIn;
        
    } else {
        float timesFitsIn = ([self calculateVolume] / [aBox calculateVolume]);
        return timesFitsIn;
    }
}

@end
