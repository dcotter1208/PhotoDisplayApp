//
//  Story.m
//  PhotoDisplayApp
//
//  Created by DetroitLabs on 6/2/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import "Story.h"

@implementation Story

-(id)initWithFact:(NSString *)fact andImage:(NSString *)imageFileName andTruth:(BOOL)truth {
    self = [super init];
    
    if (self) {
        _fact = fact;
        _image = [UIImage imageNamed:imageFileName];
        _truth = truth;
    }
    
    return self;
}

@end
