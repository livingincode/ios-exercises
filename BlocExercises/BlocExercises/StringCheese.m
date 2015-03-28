//
//  StringCheese.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "StringCheese.h"

@implementation StringCheese

- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName {
    /* WORK HERE */
    
    return [NSString stringWithFormat:@"My favorite cheese is %@.", cheeseName];
    

}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    /* WORK HERE */
   
    NSRange cheeseRange = [cheeseName rangeOfString:@" cheese" options: NSCaseInsensitiveSearch];
    if (cheeseRange.location == NSNotFound) {
        return cheeseName;
    }
    
    NSString *noCheese = [cheeseName stringByReplacingCharactersInRange:cheeseRange withString:@""];
    return noCheese;
    

}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
   /* if (cheeseCount == 1) {
   
        return [NSString stringWithFormat:@"%ld cheese", cheeseCount];
    } else {
        return [NSString stringWithFormat:@"%ld cheeses", cheeseCount];
   
    }*/
    
    NSString *cheeseString = (cheeseCount == 1 ? @"cheese" : @"cheeses");
    return [NSString stringWithFormat:@"%ld %@", cheeseCount, cheeseString];
   

}

@end
