//
//  ViewController.m
//  PhotoDisplayApp
//
//  Created by DetroitLabs on 6/1/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import "ViewController.h"
#import "ImageVC.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *buttons;

@end

UIButton *button;
Story *storyOne;
Story *storyTwo;
Story *storyThree;
Story *storyFour;
Story *storyFive;
Story *storySix;
Story *selectedStory;
NSMutableArray *storyArray;
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self createStories];
//    [self setButtonImages];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)imageButtonPressed:(id)sender {
    
    button = sender;
    
    switch (button.tag) {
        case 1:
            [self setSelectedStoryAndPerformSegue:storyOne];
            break;
        case 2:
            [self setSelectedStoryAndPerformSegue:storyTwo];
            break;
        case 3:
            [self setSelectedStoryAndPerformSegue:storyThree];
            break;
        case 4:
            [self setSelectedStoryAndPerformSegue:storyFour];
            break;
        case 5:
            [self setSelectedStoryAndPerformSegue:storyFive];
            break;
        case 6:
            [self setSelectedStoryAndPerformSegue: storySix];
            break;
        default:
            NSLog(@"No image");
            break;
    }
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"fullImageViewSegue"]) {
        ImageVC *destinationViewController = (ImageVC *)segue.destinationViewController;
        destinationViewController.story = selectedStory;
    }
}

-(void)setSelectedStoryAndPerformSegue:(Story *)story {
    selectedStory = story;
    [self performSegueWithIdentifier:@"fullImageViewSegue" sender:self];
}

-(void) createStories {
    storyOne = [[Story alloc]initWithFact:@"I'm 28 Years Old" andImage:@"bigEyes" andTruth:true];
    storyTwo = [[Story alloc]initWithFact:@"I once drove my car into a tree" andImage:@"dog" andTruth:true];
    storyThree = [[Story alloc]initWithFact:@"I have two sisters" andImage:@"cat" andTruth:false];
    storyFour = [[Story alloc]initWithFact:@"I love snakes" andImage:@"cowboy" andTruth:false];
    storyFive = [[Story alloc]initWithFact:@"I was born in Florida" andImage:@"old" andTruth:false];
    storySix = [[Story alloc]initWithFact:@"I require corrective lenses" andImage:@"dogGlasses" andTruth:true];
    
    storyArray = [[NSMutableArray alloc]initWithObjects:storyOne, storyTwo, storyThree, storyFour, storyFive, storySix, nil];
    
    [self makeButtonImages];
    
}

-(void)makeButtonImages {
    for (int i = 0; i < storyArray.count; i++) {
        Story *story = [storyArray objectAtIndex:i];
        UIButton *button = [_buttons objectAtIndex:i];
        [button setBackgroundImage:story.image forState:UIControlStateNormal];
    }
}


@end
