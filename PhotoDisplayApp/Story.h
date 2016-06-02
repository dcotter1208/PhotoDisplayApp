//
//  Story.h
//  PhotoDisplayApp
//
//  Created by DetroitLabs on 6/2/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Story : NSObject

@property(nonatomic, strong) NSString *fact;
@property(nonatomic, strong) UIImage *image;
@property(nonatomic) BOOL truth;

-(id)initWithFact:(NSString *)fact andImage:(NSString *)image andTruth:(BOOL)truth;

@end
