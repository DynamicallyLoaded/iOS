//
//  MWMapView+DLVisibleMapRect.h
//
//  Created by Malcolm Hall on 17/01/2014.
//  Copyright (c) 2014 Dynamically Loaded Ltd. All rights reserved.
//

#import <MapKit/MapKit.h>

@interface MKMapView (DLVisibleMapRect)

//sets the visible map rect to the bounds of its annotations without animating.
-(void)dl_setVisibleMapRectToAnnotations;
//same as above with animated option.
-(void)dl_setVisibleMapRectToAnnotationsAnimated:(BOOL)animated;

@end
