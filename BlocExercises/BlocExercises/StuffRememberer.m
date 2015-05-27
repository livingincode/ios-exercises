//
//  StuffRememberer.m
//  BlocExercises
//
//  Created by Aaron on 6/12/14.
//
//

#import "StuffRememberer.h"

@implementation StuffRememberer

- (void) rememberThisArrayForLater:(NSMutableArray *)arrayToRemember {

    self.rememberArray = arrayToRemember;
    
}

- (void) copyThisArrayForLater:(NSMutableArray *)arrayToCopy {

    self.copiedArray = arrayToCopy;
    
}

- (void) rememberThisFloatForLater:(CGFloat)floatToRemember {
    
    self.rememberFloat = floatToRemember;

}

- (NSMutableArray *) arrayYouShouldRemember {
    
    return self.rememberArray;

}

- (NSMutableArray *) arrayYouShouldCopy {
    
    return self.copiedArray;

}

- (CGFloat) floatYouShouldRemember {
    
    return self.rememberFloat;

}

@end