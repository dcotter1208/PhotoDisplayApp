//
//  ImageVC.m
//  PhotoDisplayApp
//
//  Created by DetroitLabs on 6/2/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import "ImageVC.h"

@interface ImageVC ()

@property (weak, nonatomic) IBOutlet UIImageView *backgroundImageView;
@property (weak, nonatomic) IBOutlet UITextView *factTextView;

@end

@implementation ImageVC

- (void)viewDidLoad {
    [super viewDidLoad];

    _backgroundImageView.image = _story.image;
    _factTextView.text = _story.fact;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)displayAlert:(NSString *)alertMessage {
    
    UIAlertController *alertViewController = [UIAlertController alertControllerWithTitle:alertMessage message:nil preferredStyle:UIAlertControllerStyleAlert];
    [self presentViewController:alertViewController animated:TRUE completion:nil];
    
    UIAlertAction *action = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        [self dismissViewControllerAnimated:TRUE completion:nil];
    }];
    
    [alertViewController addAction:action];
    
}

- (IBAction)trueOrFalse:(id)sender {
    
    UIButton *button = sender;
    
    if ([button.titleLabel.text isEqualToString:@"True"] && _story.truth == true) {
        [self displayAlert:@"Correct! It's True!"];
    } else if ([button.titleLabel.text isEqualToString:@"False"] && _story.truth == false) {
        [self displayAlert:@"Correct! It's False"];
    } else {
        [self displayAlert:@"WRONG!"];
    }
    
    
}


- (IBAction)dismissViewController:(id)sender {
    
    [self dismissViewControllerAnimated:true completion:nil];
    
}


@end
