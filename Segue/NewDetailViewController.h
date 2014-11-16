//
//  NewDetailViewController.h
//  Segue
//
//  Created by Daniel Platt on 13/11/2014.
//  Copyright (c) 2014 Daniel Platt. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MasterViewController.h"

@interface NewDetailViewController : UIViewController

@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

- (IBAction)create:(id)sender;

@end
