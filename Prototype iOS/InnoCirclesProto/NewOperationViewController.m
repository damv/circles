//
//  NewOperationViewController.m
//  InnoCirclesProto
//
//  Created by Damien VIELPEAU on 03/03/13.
//
//

#import "NewOperationViewController.h"

@interface NewOperationViewController ()

@end

@implementation NewOperationViewController

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

// Picker View Data Source

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 2;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return component? 5: 1;
}

// Picker View Delegates

- (NSString *)pickerView:(UIPickerView *)pickerView
             titleForRow:(NSInteger)row
            forComponent:(NSInteger)component{
    if (component) {
        NSArray* names = @[@"Tout le monde", @"Nanouk", @"Yann", @"Bob l'éponge", @"Patrick l'étoile de mer"];
        return names[row];
    } else {
        return @"à";
    }
}


#define WIDTH 40;
- (CGFloat)pickerView:(UIPickerView *)pickerView widthForComponent:(NSInteger)component{
    if (component) {
        return 320-WIDTH;
    } else {
        return WIDTH;
    }
}


@end
