//
//  MWMapView+DLVisibleMapRect.m
//
//  Created by Malcolm Hall on 17/01/2014.
//  Copyright (c) 2014 Dynamically Loaded Ltd. All rights reserved.
//

#import "MKMapView+DLVisibleMapRect.h"

@implementation MKMapView (DLVisibleMapRect)

-(void)dl_setVisibleMapRectToAnnotations{
    [self dl_setVisibleMapRectToAnnotationsAnimated:NO];
}

-(void)dl_setVisibleMapRectToAnnotationsAnimated:(BOOL)animated{
    MKMapRect zoomRect = MKMapRectNull;
    for (id <MKAnnotation> annotation in self.annotations)
    {
        MKMapPoint annotationPoint = MKMapPointForCoordinate(annotation.coordinate);
        MKMapRect pointRect = MKMapRectMake(annotationPoint.x, annotationPoint.y, 0.1, 0.1);
        zoomRect = MKMapRectUnion(zoomRect, pointRect);
    }
    [self dl_setVisibleMapRect:zoomRect animated:animated];
}

@end




