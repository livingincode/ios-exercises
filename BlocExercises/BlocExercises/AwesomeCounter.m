//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
   
 /*   NSMutableString *str = [NSMutableString string];
    
    NSInteger lower = number < otherNumber ? number : otherNumber;
    NSInteger upper = number > otherNumber ? number : otherNumber;
    
    for (NSInteger i = lower; i <= upper; i++) {
        [str appendFormat:@"%ld", i];
    }
    
    return str;*/
    
    if (number == otherNumber) {
        return [NSString stringWithFormat:@"%ld", (long)number];
    }

    NSInteger lowNumber, highNumber;
    
    if (number < otherNumber) {
        lowNumber = number;
        highNumber = otherNumber;
    } else {
        lowNumber = otherNumber;
        highNumber = number;
    }
    
    NSMutableString *returnString = [NSMutableString string];
    
    for (NSInteger i = lowNumber; i <= highNumber; i++) {
        [returnString appendFormat:@"%ld", (long)i];
    }
   
    return returnString;
}

@end
  