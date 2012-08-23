//
//  ViewController.m
//  Example
//
//  Created by MumenShabaro on 8/23/12.
//  Copyright (c) 2012 Mumen Shabaro. All rights reserved.
//

#import "ViewController.h"
#import "Language.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize localizedLBL;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [localizedLBL setText:[Language get:@"title" alter:@"title not found"]];
}

- (void)viewDidUnload
{
    [self setLocalizedLBL:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}

- (void)dealloc {
    [localizedLBL release];
    [super dealloc];
}

- (IBAction)changeLanguage:(id)sender {
    UISegmentedControl *seg = (UISegmentedControl *)sender;
    
    switch (seg.selectedSegmentIndex) {
        case 0:
            [Language setLanguage:@"en"];
            break;
        case 1:
            [Language setLanguage:@"fr"];
            break;
        case 2:
            [Language setLanguage:@"ar"];
            break;
        default:
            break;
    }
    
    [localizedLBL setText:[Language get:@"title" alter:@"title not found"]];
}

@end
