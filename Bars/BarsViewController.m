//
//  BarsViewController.m
//  Bars
//
//  Created by Xavier Hernandez on 06/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import "BarsViewController.h"
#import "BarDetailViewController.h"

@interface BarsViewController ()

@property (nonatomic,strong) Bars *barsList;
@property (nonatomic) NSUInteger currentPosition;
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
	
	_barsList = [[Bars alloc]initWithFile:@"barsList"];
	
	[self showBar:0];
	
	
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

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
	
	if([segue.identifier isEqualToString:@"passDataToDetailBar"]){
		BarDetailViewController *VC = (BarDetailViewController *)[segue destinationViewController];
		VC.bar = [[_barsList allBars] objectAtIndex:[self currentPosition]];
	}
	
}
- (IBAction)previousBar:(id)sender {
	
	NSUInteger previousPosition = self.currentPosition;
	NSUInteger newPosition = 0;
	
	if(previousPosition==0){
		
		newPosition = [self.barsList count]-1;
		
	}else{
		
		newPosition = --previousPosition;
		
	}
	
	NSLog(@"%d",newPosition);
	
	self.currentPosition = newPosition;
	
	[self showBar:self.currentPosition];

}

- (IBAction)nextBar:(id)sender {
	
	NSUInteger previousPosition = self.currentPosition;
	NSUInteger newPosition = 0;
	
	if(previousPosition==[self.barsList count]-1){
		
		newPosition = 0;
		
	}else{
		
		newPosition = ++previousPosition;
		
	}
	
	NSLog(@"%d",newPosition);
	
	self.currentPosition = newPosition;
	
	[self showBar:self.currentPosition];
	
}

- (void)showBar:(NSUInteger)position{
	
	NSDictionary *list = [[self.barsList allBars] objectAtIndex:position];
	NSString *url = [list valueForKey:@"url"];
	NSURL *theUrl = [NSURL URLWithString:url];
	NSData *data = [NSData dataWithContentsOfURL:theUrl];
	
	NSLog(@"URL: %@",url);
	
	[[self imageBar] setImage:[UIImage imageWithData:data]];
	
	
	_nameBarLabel.text = [list valueForKey:@"name"];
	_addressBarLabel.text = [list valueForKey:@"address"];
	_ratingBarLabel.text = [NSString stringWithFormat:@"%@",[list valueForKey:@"rating"]];
	
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
