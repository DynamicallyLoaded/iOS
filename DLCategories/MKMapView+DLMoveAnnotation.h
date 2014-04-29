//
//  MKMapView+DLMoveAnnotation.h
//
//  Created by Malcolm Hall on 29/04/2014.
//  Copyright (c) 2014 Dynamically Loaded Ltd. All rights reserved.
//

#import <MapKit/MapKit.h>

@interface MKMapView (DLMoveAnnotation)

//if you want to animate do not set the coordinate on the annotation before calling this method.
-(void)moveAnnotation:(id<MKAnnotation>)annotation toCoordinate:(CLLocationCoordinate2D)coordinate animated:(BOOL)animated;

@end
