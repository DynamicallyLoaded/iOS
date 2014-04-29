//
//  MKMapView+DLMoveAnnotation.m
//
//  Created by Malcolm Hall on 29/04/2014.
//  Copyright (c) 2014 Dynamically Loaded Ltd. All rights reserved.
//

#import "MKMapView+DLMoveAnnotation.h"

@implementation MKMapView (DLMoveAnnotation)

-(void)dl_moveAnnotation:(id<MKAnnotation>)annotation toCoordinate:(CLLocationCoordinate2D)coordinate animated:(BOOL)animated{
    MKAnnotationView* annotationView = [self viewForAnnotation:annotation];
    //only need to move it if it is on the map.
    if(annotationView){
        //update image using the heading and set coordinate so it animates
        //animate to new coordinate if changed
        if(animated && (coordinate.latitude != annotation.coordinate.latitude || coordinate.longitude != annotation.coordinate.longitude)){
            //move in an animation
            
            [UIView animateWithDuration:0.5 animations:^{
                //this makes the annotation animate
                annotation.coordinate = coordinate;
                //this is what makes it move
                annotationView.annotation = annotation;
            }];
        }else{
            //move without animation
            annotation.coordinate = coordinate;
            annotationView.annotation = annotation;
        }
    }else{
        //the view is not on the map so just set its coordinate for use next time it appears.
        annotation.coordinate = coordinate;
    }
}

@end
