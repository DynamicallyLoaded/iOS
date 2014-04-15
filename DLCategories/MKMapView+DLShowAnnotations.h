//
//  MWMapView+DLShowAnnotations.h
//
//  Created by Malcolm Hall on 17/01/2014.
//  Copyright (c) 2014 Dynamically Loaded Ltd. All rights reserved.
//

#import <MapKit/MapKit.h>

@interface MKMapView (DLShowAnnotations)

//Sets the visible region so that the map displays its annotations.
-(void)dl_showAllAnnotationsAnimated:(BOOL)animated;

//Sets the visible region so that the map displays the specified annotations.
-(void)dl_showAnnotations:(NSArray*)annotations animated:(BOOL)animated;

@end
