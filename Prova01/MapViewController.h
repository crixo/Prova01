//
//  MapViewController.h
//  Prova01
//
//  Created by Bianca Borbonese on 26/10/13.
//  Copyright (c) 2013 Bianca Borbonese. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface MapViewController : UIViewController<CLLocationManagerDelegate,MKMapViewDelegate>{

    CLLocationManager *locationManager;

    IBOutlet MKMapView *mapView;

}

@end
