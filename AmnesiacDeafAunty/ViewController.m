//
//  ViewController.m
//  AmnesiacDeafAunty
//
//  Created by Arkadijs Makarenko on 14/03/2017.
//  Copyright © 2017 ArchieApps. All rights reserved.
//

#import "ViewController.h"
#import "EnterRepetitionViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(IBAction)unwindSegue:(UIStoryboardSegue *)segue{
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if([[segue identifier] isEqualToString:@"saySegue"]){
        EnterRepetitionViewController * destinationViewController = [segue destinationViewController];
        destinationViewController.speech = self.speechTextField.text;
    }
}

-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender{
    if (![self.speechTextField.text isEqual:@""]) {
        return true;
    }else{
        return false;
    }
}

@end
