//
//  ResultViewController.h
//  AmnesiacDeafAunty
//
//  Created by Arkadijs Makarenko on 14/03/2017.
//  Copyright © 2017 ArchieApps. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ResultViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (weak, nonatomic) NSString *result;
@property (nonatomic, assign) int repeat;


@end
