//
//  ESSViewController.m
//  bundleTry
//
//  Created by EverestIndia on 14/07/14.
//  Copyright (c) 2014 EverestIndia. All rights reserved.
//

#import "ESSViewController.h"

@interface ESSViewController ()

@end

@implementation ESSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSString *bundlePath = [[NSBundle mainBundle] pathForResource:@"mybundle" ofType:@"bundle"];
    NSString *imageName = [[NSBundle bundleWithPath:bundlePath] pathForResource:@"1" ofType:@"png"];
    UIImage *myImage = [[UIImage alloc] initWithContentsOfFile:imageName];
    self.view.backgroundColor=[UIColor colorWithPatternImage:myImage];
    NSLog(@"%@",NSStringFromCGRect(self.view.frame));

    self.view.frame=CGRectMake(-300, -20,320, 480);
    
    NSLog(@"%@",NSStringFromCGRect(self.view.frame));

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
