//
//  MapViewController.m
//  Prova01
//
//  Created by Bianca Borbonese on 26/10/13.
//  Copyright (c) 2013 Bianca Borbonese. All rights reserved.
//

#import "MapViewController.h"
#import "AppDelegate.h"

@interface MapViewController ()

@end

@implementation MapViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (NSString *)deviceLocation {
    return [NSString stringWithFormat:@"latitude: %f longitude: %f", locationManager.location.coordinate.latitude, locationManager.location.coordinate.longitude];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    mapView.delegate = self;
    locationManager = [[CLLocationManager alloc] init];
    [locationManager setDelegate:self];
    [locationManager setDistanceFilter:kCLDistanceFilterNone];
    
    [locationManager setDesiredAccuracy:kCLLocationAccuracyBest];
    [mapView setShowsUserLocation:YES];
    
    // Override point for customization after application launch.
    //[window makeKeyAndVisible];

    
        //locationManager = [[CLLocationManager alloc] init];
        locationManager.distanceFilter = kCLDistanceFilterNone; // whenever we move
        locationManager.desiredAccuracy = kCLLocationAccuracyHundredMeters; // 100 m
        [locationManager startUpdatingLocation];
    
    NSLog(@"%@", [self deviceLocation]);
    }

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
