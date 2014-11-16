//
//  NewDetailViewController.m
//  Segue
//
//  Created by Daniel Platt on 13/11/2014.
//  Copyright (c) 2014 Daniel Platt. All rights reserved.
//

#import "AppDelegate.h"
#import "NewDetailViewController.h"
#import "MasterViewController.h"

@interface NewDetailViewController ()

@end

@implementation NewDetailViewController

- (IBAction)create:(id)sender
{
    NSLog(@"Create called.");

    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    NSManagedObjectContext *context = [appDelegate managedObjectContext];

    NSEntityDescription *entity = [NSEntityDescription entityForName:@"Event" inManagedObjectContext:context];
    
    NSManagedObject *newManagedObject = [NSEntityDescription insertNewObjectForEntityForName:[entity name] inManagedObjectContext:context];

    // If appropriate, configure the new managed object.
    // Normally you should use accessor methods, but using KVC here avoids the need to add a custom class to the template.
    [newManagedObject setValue:[NSDate date] forKey:@"timeStamp"];
    
    // Save the context.
    NSError *error = nil;
    if (![context save:&error]) {
        // Replace this implementation with code to handle the error appropriately.
        // abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
        NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
        abort();
    }
    
    NSLog(@"Will return to step one.");
    
    [self performSegueWithIdentifier: @"return" sender:self];
}

@end
