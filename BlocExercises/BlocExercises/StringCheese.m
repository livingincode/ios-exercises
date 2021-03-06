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
    


    if ([[cheeseName lowercaseString] hasSuffix:@" cheese"]) {
        /* WORK HERE, ASSUMING `cheeseName` ENDS WITH " cheese" */
    } else {
        /* WORK HERE, ASSUMING `cheeseName` DOES NOT END WITH " cheese" */
    }

    /*
     (You will learn more about if/else statements in a later checkpoint.)
     */

    return nil;

}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
   /* if (cheeseCount == 1) {
   
        return [NSString stringWithFormat:@"%ld cheese", cheeseCount];
    } else {
        return [NSString stringWithFormat:@"%ld cheeses", cheeseCount];
   
    }*/
    

    NSString *cheeseString = (cheeseCount == 1 ? @"cheese" : @"cheeses");
    return [NSString stringWithFormat:@"%ld %@", cheeseCount, cheeseString];
   


    /*
     (You will learn more about if/else statements in a later checkpoint.)
     */
    
    return nil;

}

@end
