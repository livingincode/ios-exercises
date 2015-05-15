//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
    
    return [characterString componentsSeparatedByString:@";"];
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
   
    return [characterArray componentsJoinedByString:@";"];
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    
    NSMutableArray *alphabetization = [NSMutableArray arrayWithArray:characterArray];
    NSSortDescriptor *sort = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES selector:nil];
    [alphabetization sortUsingDescriptors:@[sort]];
    
    return alphabetization;
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    
    BOOL foundWorf = NO;
    
    NSPredicate *containsWorf = [NSPredicate predicateWithFormat:@"SELF CONTAINS[C] 'worf'"];
    NSArray *worf = [characterArray filteredArrayUsingPredicate:containsWorf];
    
    if (worf.count > 0) {
        foundWorf = YES;
    }
    
    return foundWorf;

/*    for (NSString *worf in characterArray) {
        NSString *name = worf.lowercaseString;
        NSRange worfRange = [name rangeOfString:@"worf"];
        
        if (worfRange.location != NSNotFound) {
            return YES;
        }
    }
    
    return NO; */
}

@end
