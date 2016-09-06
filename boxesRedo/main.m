//
//  main.m
//  boxesRedo
//
//  Created by naomi schettini on 2016-09-06.
//  Copyright © 2016 naomi schettini. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Box.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Box *box1 = [[Box alloc]initWithHeight:6 width:8 andLength:9];
        float box1Volume = [box1 calculateVolume];
        
        NSLog(@"volume of box 1 is %f", box1Volume);
        
        Box *box2 = [[Box alloc]init];
        box2.width = 8;
        box2.height = 9;
        box2.length = 5;
        float box2Volume = [box2 calculateVolume];
        NSLog(@"volume of box2 is %f", box2Volume);
        
        
        float timesFits = [box1 timesFitsInBox:box2];
        
//        NSArray *arrayOfBoxes = [[NSArray alloc] initWithObjects: box1, box2, nil];
        
//        [(Box*)[arrayOfBoxes objectAtIndex: 0] timesFitsInBox:box1 andBox2:box2];
        
        NSLog(@"the bigger box fits into the other %f times", timesFits);
        
    }
    return 0;
}
