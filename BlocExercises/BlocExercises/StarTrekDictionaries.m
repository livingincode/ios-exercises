//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    
    return characterDictionary[@"favorite drink"];
    
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    
    return [charactersArray valueForKey:@"favorite drink"];
    
}

                             
- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    
    NSMutableDictionary *addQuote = [characterDictionary mutableCopy];
    addQuote[@"quote"] = @"The Vulcan Neck Pinch is not half as powerful as the Vulcan Groin Kick, but it's more politically correct";
    
    return addQuote;
}

@end
