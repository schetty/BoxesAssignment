//
//  Box.h
//  boxesRedo
//
//  Created by naomi schettini on 2016-09-06.
//  Copyright © 2016 naomi schettini. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Box : NSObject

@property float height;
@property float width;
@property float length;
@property NSArray *arrayOfBoxes;
//@property float timesFitsIn;

- (instancetype) initWithHeight:(float)height width:(float)width andLength:(float)length;

- (float) calculateVolume;


- (float) timesFitsInBox:(Box*)aBox;

@end
