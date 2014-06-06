//
//  BarsViewController.m
//  Bars
//
//  Created by Xavier Hernandez on 06/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import "BarsViewController.h"
#import "Bars.h"

@interface BarsViewController ()

@property (nonatomic,strong) Bars *barsList;
@property (weak, nonatomic) IBOutlet UILabel *nameBarLabel;
@property (weak, nonatomic) IBOutlet UILabel *addressBarLabel;
@property (weak, nonatomic) IBOutlet UILabel *ratingBarLabel;
@property (weak, nonatomic) IBOutlet UIImageView *imageBar;

@end

@implementation BarsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (Bars *)barsList {
	
	if(!_barsList)

	{
	
		_barsList = [[Bars alloc] initWithFile:@"barsList"];
		
	}
	
	return _barsList;
	
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
