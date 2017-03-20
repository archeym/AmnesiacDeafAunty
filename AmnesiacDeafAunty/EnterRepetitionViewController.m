//
//  EnterRepetitionViewController.m
//  AmnesiacDeafAunty
//
//  Created by Arkadijs Makarenko on 14/03/2017.
//  Copyright © 2017 ArchieApps. All rights reserved.
//

#import "EnterRepetitionViewController.h"
#import "ResultViewController.h"

@interface EnterRepetitionViewController ()
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (nonatomic, assign) int random;
- (IBAction)result:(id)sender;


@end

@implementation EnterRepetitionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.random = arc4random_uniform(10);
    if ([self.speech isEqualToString:@"shout"]) {
        [self.resultLabel setText: @"You are shouting!"];
    }else{
        [self.resultLabel setText: @"What!"];
    }
}
- (IBAction)random:(id)sender {
    self.textField.text = [NSString stringWithFormat:@"%i", self.random];
}

- (IBAction)result:(id)sender {
    
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if([[segue identifier] isEqualToString:@"show"]){
        ResultViewController * destinationViewController =[segue destinationViewController];
        destinationViewController.result = self.resultLabel.text;
        destinationViewController.repeat = [self.textField.text intValue];
    }
}

-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender{
    NSCharacterSet *myCharSet = [NSCharacterSet characterSetWithCharactersInString:@"0123456789"];
    for (int i = 0; i < [self.textField.text length]; i++) {
        unichar c = [self.textField.text characterAtIndex:i];
        if ([myCharSet characterIsMember:c]) {
            return true;
        }
    }
    return false;
}
@end
