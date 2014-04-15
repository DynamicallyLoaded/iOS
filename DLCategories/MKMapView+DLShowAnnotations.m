//
//  MWMapView+DLShowAnnotations.h
//
//  Created by Malcolm Hall on 17/01/2014.
//  Copyright (c) 2014 Dynamically Loaded Ltd. All rights reserved.
//

#import "MKMapView+DLShowAnnotations.h"

@implementation MKMapView (DLShowAnnotations)

-(void)dl_showAllAnnotationsAnimated:(BOOL)animated{
    [self dl_showAnnotations:self.annotations animated:animated];
}

-(void)dl_showAnnotations:(NSArray*)annotations animated:(BOOL)animated{
	if (NSFoundationVersionNumber > NSFoundationVersionNumber_iOS_6_1){
		//use new iOS 7 method
		[self showAnnotations:annotations animated:animated];
		return;
	}
	//use our iOS 6 implementation
    MKMapRect zoomRect = MKMapRectNull;
    for (id <MKAnnotation> annotation in annotations)
    {
        MKMapPoint annotationPoint = MKMapPointForCoordinate(annotation.coordinate);
        MKMapRect pointRect = MKMapRectMake(annotationPoint.x, annotationPoint.y, 0.1, 0.1);
        zoomRect = MKMapRectUnion(zoomRect, pointRect);
    }
    [self setVisibleMapRect:zoomRect animated:animated];
}

@end




