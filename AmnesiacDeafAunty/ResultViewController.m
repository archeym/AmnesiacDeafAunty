//
//  ResultViewController.m
//  AmnesiacDeafAunty
//
//  Created by Arkadijs Makarenko on 14/03/2017.
//  Copyright © 2017 ArchieApps. All rights reserved.
//

#import "ResultViewController.h"

@interface ResultViewController ()

@end

@implementation ResultViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSMutableString *string = [NSMutableString string];
    
    self.automaticallyAdjustsScrollViewInsets = false;
    
    for (int i = 0; i<self.repeat; i++){
        [string appendFormat:@"%@\n", self.result];
    }
    self.textView.text = string;
}
@end
