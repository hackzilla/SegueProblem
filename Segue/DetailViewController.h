//
//  DetailViewController.h
//  Segue
//
//  Created by Daniel Platt on 13/11/2014.
//  Copyright (c) 2014 Daniel Platt. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

- (IBAction)done:(id)sender;


@end

